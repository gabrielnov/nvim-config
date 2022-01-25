call plug#begin('~/.config/nvim/plugged')
	Plug 'navarasu/onedark.nvim'
	Plug 'preservim/nerdtree'
	Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
	Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
	Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
	Plug 'tmsvg/pear-tree'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim'
	Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

let g:onedark_config = {
    \ 'style': 'deep',
\}
colorscheme onedark

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd VimEnter * NERDTree | wincmd p

let g:coq_settings = { 'auto_start': 'shut-up' }

set encoding=UTF-8
