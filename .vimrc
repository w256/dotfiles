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

" popup color
hi Pmenu ctermbg=0
hi PmenuSel ctermbg=4
hi PmenuSbar ctermbg=2
hi PmenuThumb ctermfg=3

" special Chars
set list
set listchars=eol:\ ,tab:>-,extends:<,trail:_

" status line
set laststatus=2

" see http://blog.tojiru.net/article/234400966.html
"
" netrw : ree view
let g:netrw_liststyle = 3
" netrwは'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" netrwは'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1

" Vundle
set rtp+=~/dotfiles/local/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Vim Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
