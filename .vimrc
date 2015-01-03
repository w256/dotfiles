" tab
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

" undo
if has('persistent_undo')
    set undodir=~/.vimUndolog
    set undofile
endif

" edit redume
au BufWritePost * mkview
autocmd BufReadPost * loadview
