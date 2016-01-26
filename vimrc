:set nu
:colorscheme termschool
:set noswapfile

"converting tabs to spaces
:set expandtab tabstop=4 shiftwidth=4

"semicolon macro CTRL + B
"inoremap <c-b> <esc>A;<esc>

"tab management
nnoremap <C-Q> :tabprevious <CR>
nnoremap <C-E> :tabnext <CR>
nnoremap <C-W> :tabclose <CR>

"enable/disable whitespace
noremap <C-L> <Esc>:call ToggleWhitespace()<CR>
:set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
let g:tw = 0
function ToggleWhitespace()
    if !g:tw
        set list
    else
        set nolist
    endif
    let g:tw = !g:tw
endfunction

"enable/disable pastemode
noremap <C-P> <Esc>:call TogglePasteMode()<CR>
let g:pm = 0
function TogglePasteMode()
    if !g:pm
        set paste
    else
        set nopaste
    endif
    let g:pm = !g:pm
endfunction 

"folding
nnoremap <space> za
vnoremap <space> zf

map <c-space> zR
map <c-space> zM

"key mapping
nnoremap <C-S> :w <CR>

             """ PLUGINS """
"----------- VUNDLE CONFIGURE -------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" Vundle
Plugin 'VundleVim/Vundle.vim'
" Valloric
Plugin 'Valloric/YouCompleteMe'
" Airline
Plugin 'bling/vim-airline'
"SimplyFold
Plugin 'tmhedberg/SimpylFold'

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"----------------------------------------------------

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"""-------------------

"""------------------- AIRLINE
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
set laststatus=2
"""-------------------

"""------------------- TERMINAL 256 COLORS
if &term =~ "xterm"
  " 256 colors
  let &t_Co = 256
  " restore screen after quitting
  let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l\<Esc>8"
  if has("terminfo")
    let &t_Sf = "\<Esc>[3%p1%dm"
    let &t_Sb = "\<Esc>[4%p1%dm"
  else
    let &t_Sf = "\<Esc>[3%dm"
    let &t_Sb = "\<Esc>[4%dm"
  endif
endif
"""-------------------

"""------------------- SIMPYLFOLD
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
"""-------------------

