" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.config/nvim/autoload/plugged')
		" Intelisense
		Plug 'neoclide/coc.nvim', {'branch': 'release'}
		" Theme
		Plug 'kyoz/purify', { 'rtp': 'vim' }
		" Airline
		Plug 'vim-airline/vim-airline'
		" Esx snippets
		Plug 'epilande/vim-react-snippets'
		" File manager
		Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
call plug#end()
