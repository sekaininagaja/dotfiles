syntax on
nnoremap <F2> :w   
set backspace=indent,eol,start
set clipboard+=unnamed
set nu
set hlsearch
set ignorecase
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8

set history=500 
" 500까지 기억하기
let mapleader=","
" #leader key 로 , 을 사용


set showmatch 
" #괄호 위에 커서가 올라가면 매치되는 괄호를 표시


call plug#begin('~/.vim/plugged')

"바닥글
Plug 'vim-airline/vim-airline'
"바닥글추가 , 삭제, 변경정보 확인
Plug 'tpope/vim-fugitive'
"IDE 파일 Tree
Plug 'scrooloose/nerdtree'
"문법 체크
Plug 'scrooloose/syntastic'
"자동 완성
Plug 'Shougo/neocomplcache.vim'
"정렬
Plug 'nathanaelkane/vim-indent-guides'
"awesome Python autocompletion with VIM
Plug 'davidhalter/jedi-vim'
"git 변경부분 확인
Plug 'airblade/vim-gitgutter'

" 색상 테마 적용
Plug 'nanotech/jellybeans.vim'
" flake8
Plug 'https://github.com/nvie/vim-flake8'

call plug#end()



" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

color jellybeans
