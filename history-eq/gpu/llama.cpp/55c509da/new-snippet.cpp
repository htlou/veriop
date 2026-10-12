inline void save_res(int ii, int jj, int idx, vector float* fin_res, int RM=4, int RN=4) {
       for (int I = 0; I < RM; I++) {
          for (int J = 0; J < RN; J++) {
             *((float*)(C+ii+((jj+J)*ldc)+I)) = *((float*)&fin_res[idx+I]+J);
          }
       }
    }
