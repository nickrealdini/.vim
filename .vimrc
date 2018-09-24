" Enable plugins
execute pathogen#infect()
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Highlighting search matches
set hlsearch

" Enable the mouse to scroll
set mouse=a

" Enable copy & paste from clipboard?
set clipboard=unnamedplus

" Enambe line numbers
" set number

" Lines/Column numbers in the bottom-right corner
set ruler

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

" Enable syntax directory
" "set foldmethod=syntax

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:p:h\")})%)%(\ %a%)\ -\ %{v:servername}

let g:syntastic_quiet_mesdages = { 'type': 'style' }
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" JSON Syntax
augroup json_autocmd
  autocmd!
  autocmd FileType json set autoindent
  autocmd FileType json set formatoptions=tcq2l
  autocmd FileType json set textwidth=78 shiftwidth=2
  autocmd FileType json set softtabstop=2 tabstop=8
  autocmd FileType json set expandtab
augroup END

let g:indentLine_noConcealCursor=""
let g:tex_conceal = ""

" Mappings to move linesEdit
" The following mappings in your vimrc provide a quick way to move lines of text up or down. 
" The mappings work in normal, insert and visual modes, allowing you to move the current line, or a selected block of lines.

nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
