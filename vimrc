set nocompatible
scriptencoding utf-8

syntax on
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized


"indenting
filetype on
filetype indent on
filetype plugin on
set nocindent
set autoindent
"set shiftwidth=4
"set tabstop=4
set smartindent
" 2 whitespace tab
" set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
" 4 whitespace tab
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

set wrap!

"delimitMate config
"imap <C-c> <CR><Esc>O

set mouse=a 				" mouse support
set number
set cul

"whitespace display
set pastetoggle=<f5>
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set list

"js indexting plugin configuration
set regexpengine=1


set showmatch 				" show matching brackets
"autocomplete
set incsearch				" find as you type search
set incsearch hlsearch		" highlight found items
set wildmenu				" show list instead of just completing

"fix for apps that monitor the fs (livereload etc)
set backupcopy=yes

"removes trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"ctrp config
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
" let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|ext|test|docs)|(\.(swp|ico|git|svn))$'

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"ALE
let g:ale_completion_enabled = 1
" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \   'typescript': ['tsserver', 'tslint'],
" \}
"
let g:ale_virtualtext_cursor = 1

nmap <silent> <C-o> <Plug>(ale_detail)
let g:ale_change_sign_column_color = 1

" vim plug installation
"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" nvim plug installation
"sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"if empty(glob('~/.vim/autoload/plug.vim'))
"  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

call plug#begin('~/.nvim/plugged')

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

Plug 'https://github.com/mileszs/ack.vim.git'
Plug 'https://github.com/dense-analysis/ale.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/tomtom/tcomment_vim.git'
Plug 'https://github.com/leafgarland/typescript-vim.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/aserebryakov/vim-todo-lists.git'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/tpope/vim-surround.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Using a non-default branch
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()
