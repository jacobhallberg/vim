set nocompatible              " required
filetype off                  " required

" Install Vundle:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Comment stuff better. "
Plugin 'tpope/vim-commentary.git'

" Better status bar."
Plugin 'itchyny/lightline.vim.git'
set noshowmode

" Plugin 'vim-syntastic/syntastic.git'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_python_checkers = ['pylint']


" Add git changes to side of line."
Plugin 'airblade/vim-gitgutter.git'

" Add file tree on command."
Plugin 'scrooloose/nerdtree.git'
map <C-o> :NERDTreeToggle<CR>

" Allows git commands directly within vim. "
Plugin 'tpope/vim-fugitive.git'

" Fuzzy Finder
Plugin 'ctrlpvim/ctrlp.vim.git'

" Syntax checking. "
" Plugin 'w0rp/ale.git'
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_fix_one_save = 1


" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ |set softtabstop=4
    \ |set shiftwidth=4
    \ |set textwidth=79
    \ |set expandtab
    \ |set autoindent
    \ |set fileformat=unix

"split navigations wasd "
nnoremap <C-j> <C-W><C-H>
nnoremap <C-k> <C-W><C-J>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-i> <C-W><C-K>

"move split windows wasd "
map <S-J> <C-W>H
map <S-L> <C-W>L
map <S-I> <C-W>K
map <S-K> <C-W>J

"move between terminal and window."
"tnoremap <C-j> <C-W><C-H>
"tnoremap <C-k> <C-W><C-J>
"tnoremap <C-l> <C-W><C-L>
"tnoremap <C-u> <C-W><C-K>

""move terminal around in terminal mode."
"tnoremap <S-J> <C-W>H
"tnoremap <S-L> <C-W>L
"tnoremap <S-I> <C-W>K
"tnoremap <S-K> <C-W>J



"move between tabs."
nnoremap <C-@> :tabnext<CR>

let python_highlight_all=1
syntax on
set encoding=utf-8
set nu
set clipboard=unnamedplus
set clipboard=unnamed

"Remap hjkl to wasd type style"
nnoremap j hzz
nnoremap k jzz
nnoremap i kzz
nnoremap h i

vnoremap j hzz
vnoremap k jzz
vnoremap i kzz
vnoremap h i

"searching"
set hlsearch
set incsearch
set ignorecase

"Causes all splits to happen below or to the right"
set splitbelow
set splitright


"Show statusline."
set laststatus=2

"Remove scratch preview."
set completeopt-=preview

"Disable arrow keys. Get good."
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>

nnoremap <Right> :echo "No Right for you!"<CR>
vnoremap <Right> :<C-u>echo "No Right for you!"<CR>
inoremap <Right> <C-o>:echo "No Right for you!"<CR>

nnoremap <Up> :echo "No Up for you!"<CR>
vnoremap <Up> :<C-u>echo "No Up for you!"<CR>
inoremap <Up> <C-o>:echo "No Up for you!"<CR>

nnoremap <Down> :echo "No Down for you!"<CR>
vnoremap <Down> :<C-u>echo "No Down for you!"<CR>
inoremap <Down> <C-o>:echo "No Down for you!"<CR>


" Replace in visual mode. "
vnoremap \s :s/\%V

" No Wrap. "
set nowrap

" Mouse control resizing of windows."
set mouse=n
set ttymouse=xterm2

