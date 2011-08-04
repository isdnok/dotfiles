set nocompatible
filetype on
filetype indent on
filetype plugin on
compiler ruby
let ruby_space_errors=1

"バッファタブにパスを省略してファイル名のみ表示する(buftabs.vim)
let g:buftabs_only_basename=1
"バッファタブをステータスライン内に表示する
let g:buftabs_in_statusline=1

set number
syntax on
set tabstop=2
set expandtab
"set paste
set softtabstop=2
set shiftwidth=2
set encoding=utf8
set nocompatible
set showmatch
set smartindent
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
set title
set laststatus=2
set grepprg=internal
set hlsearch
:set noautoindent
":set nosmartindent
"カレント行にアンダーラインを表示するがもっさりするのでやめる
"set cursorline

"Buf切り替え
noremap <Tab> :bn!<CR>
noremap <S-Tab> :bp!<CR>

"Win操作
nnoremap sh <C-w>h:call <SID>good_size()<Cr>
nnoremap sj <C-w>j:call <SID>good_size()<Cr>
nnoremap sk <C-w>k:call <SID>good_size()<Cr>
nnoremap sl <C-w>l:call <SID>good_size()<Cr>
nnoremap sH <C-w>H:call <SID>good_size()<Cr>
nnoremap sJ <C-w>J:call <SID>good_size()<Cr>
nnoremap sK <C-w>K:call <SID>good_size()<Cr>
nnoremap sL <C-w>L:call <SID>good_size()<Cr>
nnoremap ss :call <SID>good_size()<Cr>
function! s:good_size()
  if winwidth(0) < 128 
    vertical resize 128
  endif
  if winheight(0) < 40
    resize 40
  endif
endfunction

nnoremap <C-w>s :call <SID>good_size()<Cr>

"ヤンクのプラグイン http://nanasi.jp/articles/vim/yankring_vim.html
:let g:yankring_max_history = 30
"機能を停止する場合
"let g:yankring_enabled = 0
:let g:yankring_ignore_duplicate = 1
set viminfo+=!

"ハイライトを消す
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" rails.vim
let g:rails_level=4
let g:rails_default_file="app/controllers/application.rb"
let g:rails_default_database="mysql"

"<C-e>でRuby omni補完
imap <C-e> <C-x><C-o>

"<C-r>でRails omni補完
imap <C-r> <C-x><C-o>
