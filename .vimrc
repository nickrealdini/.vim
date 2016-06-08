" Enable plugins
execute pathogen#infect()
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Highlighting search matches
:set hlsearch

" Enable the mouse to scroll
:set mouse=a

" Enambe line numbers
" :set number

" Lines/Column numbers in the bottom-right corner
:set ruler

" Backspace key won't move from current line
set backspace=indent,eol,start

" Displaying status line always
set laststatus=2
"set statusline=%F[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"set statusline+=%F

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" set cursorline
" autocmd InsertEnter * highlight CursorLine guifg=white guibg=blue ctermfg=white ctermbg=blue
" autocmd InsertLeave * highlight CursorLine guifg=white guibg=darkblue ctermfg=white ctermbg=darkblue

" Syntastic
let g:syntastic_quiet_messages = { 'type': 'style' }

set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}

" JSON Syntax
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
 " autocmd FileType json set foldmethod=syntax
augroup END

let g:indentLine_noConcealCursor=""
let g:tex_conceal = ""
