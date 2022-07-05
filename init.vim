
:set softtabstop=4
:set shiftwidth=4
:set mouse=a
:set tabstop=4
:set smarttab
:set encoding=UTF-8
:set number
:set incsearch

:set cursorline
" autocmd CursorMoved * exe printf('match lCursor /\V\<%s\>/', escape(expand('<cword>'), '/\'))
hi Cursor guifg=#121212 guibg=#afd700
hi CursorLine   cterm=NONE ctermbg=NONE ctermfg=green

"PLUGINS: ------------------------------------------------------------------------------------
source ~/.config/nvim/user.config/plugs.vim

lua require("lsp-config")
lua require("nvim-tree").setup {}

:colorscheme tokyonight
let g:airline_theme='dracula'
" :colorscheme dracula

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"KEYMAPS: ------------------------------------------------------------------------------------
source ~/.config/nvim/user.config/keymaps.vim

:set completeopt-=preview " For No Previews

packloadall

source ~/.config/nvim/user.config/wilder.conf.vim
source ~/.config/nvim/user.config/minimap.conf.vim
