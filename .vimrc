
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'itchyny/lightline.vim'
	set laststatus=2
Plugin 'scrooloose/nerdtree'
	autocmd vimenter * NERDTree
	map <C-n> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'w0rp/ale'
	let b:ale_fix_on_save = 1
Plugin 'fatih/vim-go'

call vundle#end()            " required
filetype plugin indent on    " required

let NERDTreeShowHidden=1

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

#line highlight
color desert
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40
