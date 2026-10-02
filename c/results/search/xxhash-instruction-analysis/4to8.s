.text
  movq %r14, %rdi
  movq %r15, %rsi
  mov    -0x4(%rdi,%rsi,1),%eax
  mov    (%rdi),%ecx
  shl    $0x20,%rcx
  or     %rax,%rcx
  movabs $0xc73ab174c5ecd5a2,%rax
  xor    %rcx,%rax
  rorx   $0xf,%rax,%rcx
  rorx   $0x28,%rax,%rdx
  xor    %rcx,%rdx
  xor    %rax,%rdx
  movabs $0x9fb21c651e98df25,%rax
  imul   %rax,%rdx
  mov    %rdx,%rcx
  shr    $0x23,%rcx
  add    %rsi,%rcx
  xor    %rdx,%rcx
  imul   %rax,%rcx
  mov    %rcx,%rax
  shr    $0x1c,%rax
  xor    %rcx,%rax
