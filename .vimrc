"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"general vim settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"No compatible to VI
set nocompatible

syntax on
filetype plugin indent on
set mouse=v

"fuzzy file search
set path+=**

"Mac OS clipboard settings
set clipboard=unnamed

"hide backup & swap files
set backupdir=~/.vimbackup//
set directory=~/.vimbackup//
set undodir=~/.vimbackup//

"tab settings
set tabstop=4       " The width of a TAB is set to 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

"line number settings
set number relativenumber

"cmd: tab complete show list
"set wildmode=longest,list,full
set wildmenu

"set 80 columns mark
"highlight ColorColumn ctermbg=grey
"set colorcolumn=81

"key remaps for changing splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"key remaps for changing tabs
nnoremap tk  :tabfirst<CR>
nnoremap tl  :tabnext<CR>
nnoremap th  :tabprev<CR>
nnoremap tj  :tablast<CR>
nnoremap te  :tabedit<Space>
nnoremap tn  :tabnew<Space>
nnoremap tf  :tabfind<Space>
nnoremap tm  :tabm<Space>
nnoremap tc  :tabclose<CR>

"Tab colors
:hi TabLineFill ctermfg=15 ctermbg=233
:hi TabLine ctermfg=15 ctermbg=233
:hi TabLineSel ctermfg=LightGrey ctermbg=235   

" FILE BROWSING:
" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

"Autoclose brackets
inoremap { {}<Left> 
inoremap {<CR> {<CR>}<Esc>O 
inoremap ( ()<Left> 
inoremap (<CR> (<CR>)<Esc>O 
inoremap [ []<Left> 
inoremap [<CR> [<CR>]<Esc>O 
inoremap < <><Left>
inoremap <<CR> <<CR>><Esc>O 
inoremap " ""<Left> 
inoremap "<CR> "<CR>"<Esc>O 
inoremap ' ''<Left> 
inoremap '<CR> '<CR>'<Esc>O 


" Open file browser"
nnoremap <C-n> :vs.<CR>:vertical resize 30<CR> 
