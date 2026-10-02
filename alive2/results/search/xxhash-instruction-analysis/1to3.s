.text
  movq %r14, %rdi
  movq %r15, %rsi
  movzbl (%rdi),%eax
  mov    %rsi,%rcx
  shr    %rcx
  movzbl -0x1(%rdi,%rsi,1),%edx
  shl    $0x10,%eax
  movzbl (%rdi,%rcx,1),%ecx
  shl    $0x18,%ecx
  or     %eax,%ecx
  or     %rdx,%rcx
  shl    $0x8,%rsi
  or     %rcx,%rsi
  mov    $0x87275a9b,%eax
  xor    %rsi,%rax
  movabs $0xc2b2ae3d27d4eb4f,%rcx
  imul   %rax,%rcx
  mov    %rcx,%rax
  shr    $0x1d,%rax
  xor    %rcx,%rax
  movabs $0x165667b19e3779f9,%rcx
  imul   %rax,%rcx
  mov    %rcx,%rax
  shr    $0x20,%rax
  xor    %rcx,%rax
