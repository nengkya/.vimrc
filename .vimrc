augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

set foldmethod=manual
set foldcolumn=0
set fillchars=fold:\ 
set foldtext='+'
set viewoptions=folds,cursor,curdir

highlight Folded ctermbg=Black ctermfg=Grey

highlight Tabline cterm=none gui=none

:hi TabLineFill ctermfg=Black ctermbg=Black
:hi TabLine ctermfg=Grey ctermbg=Black

set tabstop=4    "number of spaces a tab counts for
set shiftwidth=4 "number of spaces to use for each step of (un)indent
set expandtab    "use spaces instead of tabs (optional)
set softtabstop=4"how many spaces to edit when tab/bs is pressed
set nowrap

" Disable arrow keys in Normal, Visual, Select, and Operator-pending modes
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" Disable arrow keys in Insert and Command-line modes
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
