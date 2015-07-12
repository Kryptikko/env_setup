execute pathogen#infect()

syntax on
set t_Co=256
set background=dark
color mango

"indenting
set shiftwidth=4
set tabstop=4

set autoindent
"set smartindent
set wrap!

"delimitMate config
imap <C-c> <CR><Esc>O

set number

"whitespace display
:set pastetoggle=<f5>
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
:set list

"js indexting plugin configuration
:set regexpengine=1
:syntax enable

"removes trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e
