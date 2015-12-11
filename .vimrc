" width
set textwidth=0

" indent
set autoindent
set smartindent
set cindent

" tab
set smarttab
set noexpandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" resume
set viewdir=~/dotfiles/local/view
au BufWritePost * mkview
autocmd BufReadPost * loadview

" undo
set undodir=~/dotfiles/local/undo
set undofile

" ruler
set cursorline

" syntax hilight
syntax on
set showmatch

" color
set t_Co=256
colorscheme default
hi Comment ctermfg=Yellow
hi Identifier ctermfg=Cyan
hi PreProc ctermfg=Magenta
hi Visual ctermfg=Black guibg=LightGrey
hi Title guifg=LightGrey

" popup color
hi Pmenu ctermbg=0
hi PmenuSel ctermbg=4
hi PmenuSbar ctermbg=2
hi PmenuThumb ctermfg=3

" special chars
set list
set listchars=eol:\ ,tab:>-,extends:<,trail:_

" clipbord
:set guioptions+=a
:set clipboard+=autoselect
:set clipboard+=unnamed

" encording
set encoding=utf-8
set fileencodings=utf-8,iso-2022-jp,sjis

" status line
set laststatus=2
set statusline=%-(%f%m%h%q%r%w%)\ \(%{&fenc}/%{&ff}\)%=%Llines\ %{b:charCounterCount}chars\ :\ %l,%c

" NeoBundle
if has('vim_starting')
    set runtimepath+=~/dotfiles/local/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/dotfiles/local/bundle/plugin'))

NeoBundle 'anekos/char-counter-vim'
NeoBundle 'derekwyatt/vim-scala'
NeoBundle 'godlygeek/tabular'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'Shougo/unite.vim'

NeoBundleCheck
call neobundle#end()
filetype plugin indent on

let g:lightline = {
    \ 'active': {
    \   'left': [ ['mode', 'paste'], ['readonly', 'filename', 'modified'] ],
    \   'right': [ [ 'syntastic', 'lineinfo' ], ['charCount'], [ 'fileformat', 'fileencoding', 'filetype' ] ]
    \ },
    \ 'component': {
    \   'charCount': '%{b:charCounterCount}chars %Llines'
    \ }
    \ }
