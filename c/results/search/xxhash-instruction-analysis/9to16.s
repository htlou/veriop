.text
  movq %r14, %rdi
  movq %r15, %rsi
  movabs $0x6782737bea4239b9,%rax
  xor    (%rdi),%rax
  movabs $0xaf56bc3b0996523a,%rdx
  xor    -0x8(%rdi,%rsi,1),%rdx
  mulx   %rax,%rcx,%rdi
  add    %rdx,%rsi
  bswap  %rax
  add    %rax,%rsi
  xor    %rcx,%rdi
  add    %rsi,%rdi
  mov    %rdi,%rax
  shr    $0x25,%rax
  xor    %rdi,%rax
  movabs $0x165667919e3779f9,%rcx
  imul   %rax,%rcx
  mov    %rcx,%rax
  shr    $0x20,%rax
  xor    %rcx,%rax
