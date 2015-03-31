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

" SpecialKey
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" netrw関連
" see http://blog.tojiru.net/article/234400966.html
"
" netrwは常にtree view
let g:netrw_liststyle = 3
" netrwは'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" netrwは'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1


"""
"  Neobundle
"""
set nocompatible
filetype off            " for NeoBundle

if has('vim_starting')
    set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
    call neobundle#begin(expand('~/.vim/bundle'))
    NeoBundleFetch 'Shougo/neobundle.vim'
    call neobundle#end()

" NeoBundle で管理するプラグインを追加します。
NeoBundle 'Shougo/neocomplcache.git'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'derekwyatt/vim-scala'
filetype plugin indent on       " restore filetype
