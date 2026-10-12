#include <algorithm>
#include <tuple>
struct Flash_fwd_params {
  int arch, d_rounded, seqlen_q, seqlen_k, window_size_right, window_size_left;
  int h, h_k, b, num_sm;
  bool is_causal, is_local, is_e4m3, pack_gqa;
  float softcap;
  void *cu_seqlens_q, *cu_seqlens_k, *seqused_q, *seqused_k, *leftpad_k;
  void *page_table, *knew_ptr;
};
template<class... T> auto tile_size_fwd_sm90(T...) { return std::tuple{128, 64}; }
template<class... T> auto tile_size_fwd_sm80(T...) { return std::tuple{128, 64}; }
template<class... T> auto tile_size_fwd_sm8x(T...) { return std::tuple{128, 64}; }
inline int num_splits_heuristic(int, int, int, int) { return 1; }
inline int get_num_splits(Flash_fwd_params const& params) {
    #ifdef FLASHATTENTION_DISABLE_SPLIT
    return 1;
    #else
    // params.pack_gqa must already be set
    // params.page_table must already be set
    // This needs to match the kernel configs
    bool varlen = params.cu_seqlens_q || params.cu_seqlens_k || params.seqused_q || params.seqused_k || params.leftpad_k;
    auto kBlockMN_kernel_args_sm90 = tile_size_fwd_sm90(params.d_rounded, params.is_causal, params.is_local, params.is_e4m3 ? 1 : 2 /*element_size*/, false /*v_colmajor*/, params.page_table, params.softcap > 0.f);
    // Strictly speaking we need to pass in (varlen && params.num_splits > 1) but num_splits
    // has not been set here. It's OK though because we might just underestimate kBlockN a bit
    auto kBlockMN_kernel_args_sm8x = tile_size_fwd_sm8x(params.arch == 86 || params.arch == 89, params.d_rounded, params.is_causal, params.is_local, params.is_e4m3 ? 1 : 2 /*element_size*/, varlen, params.softcap > 0.f, params.knew_ptr);
    int const kBlockM = params.arch >= 90 ? std::get<0>(kBlockMN_kernel_args_sm90) : std::get<0>(kBlockMN_kernel_args_sm8x);
    int const kBlockN = params.arch >= 90 ? std::get<1>(kBlockMN_kernel_args_sm90) : std::get<1>(kBlockMN_kernel_args_sm8x);
    int seqlen_q_packgqa = params.seqlen_q * (params.pack_gqa ? params.h / params.h_k : 1);
    // If is_local, we're not going to load all of seqlen_k
    int const seqlen_k_loaded = !params.is_local
        ? params.seqlen_k
        : std::max(0, std::min(params.seqlen_k, params.window_size_right + params.window_size_left + 1 + kBlockM));
    int const num_n_blocks = (seqlen_k_loaded + kBlockN - 1) / kBlockN;
    int const num_m_blocks = (seqlen_q_packgqa + kBlockM - 1) / kBlockM;
    return num_splits_heuristic(params.b * (!params.pack_gqa ? params.h : params.h_k) * num_m_blocks, params.num_sm, num_n_blocks, 128);
    // return num_splits_heuristic(params.b * params.h_k * num_m_blocks, params.b * params.h_k,
    //                             params.num_sm, num_n_blocks, 128, params.d_rounded);
    #endif
}
