" width
set textwidth=0

" indent
set autoindent
set smartindent
set cindent

" tab
set smarttab
set expandtab
set tabstop=4
set shiftwidth=4

" resume
au BufWritePost * mkview
autocmd BufReadPost * loadview

" undo
set undodir=D:~/.vim/undo

" ruler
set ruler
set cursorline
set cursorcolumn

" syntax hilight
syntax on
set showmatch

" color
set t_Co=256
colorscheme default
hi Comment ctermfg=Yellow
hi Identifier ctermfg=Cyan
hi PreProc ctermfg=Magenta
hi CursorColumn ctermbg=DarkGreen

"""
"  Neobundle
"""
"set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
"call neobundle#begin(expand('~/.vim/bundle/'))

"NeoBundleFetch 'Shougo/neobundle.vim'

" add NeoBndle plugin under here
"NeoBundle 'Shougo/unite.vim'

"call neobundle#end()

" Required:
"filetype plugin indent on

"NeoBundleCheck
