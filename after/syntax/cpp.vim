syntax keyword cppLLVMnamespace llvm

syntax keyword cppLLVMfunctional isa
syntax keyword cppLLVMfunctional cast
syntax keyword cppLLVMfunctional cast_or_null
syntax keyword cppLLVMfunctional dyn_cast
syntax keyword cppLLVMfunctional din_cast_or_null

syntax keyword cppLLVMtype raw_ostream
syntax keyword cppLLVMtype raw_fd_ostream
syntax keyword cppLLVMtype raw_string_ostream
syntax keyword cppLLVMtype formatted_raw_ostream

syntax keyword cppLLVMtype ArrayRef
syntax keyword cppLLVMtype BitVector
syntax keyword cppLLVMtype FoldingSet
syntax keyword cppLLVMtype FoldingSetNode
syntax keyword cppLLVMtype MemoryBuffer
syntax keyword cppLLVMtype OwningPtr
syntax keyword cppLLVMtype StringMap
syntax keyword cppLLVMtype StringRef
syntax keyword cppLLVMtype StringSet
syntax keyword cppLLVMtype SmallVector

" Default highlighting
if version >= 508 || !exists("did_cpp_llvm_syntax_inits")
  if version < 508
    let did_cpp_llvm_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink cppLLVMnamespace   Builtins
  HiLink cppLLVMfunctional  Builtins
  HiLink cppLLVMtype        Type

  delcommand HiLink
endif
