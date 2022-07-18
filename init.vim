
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

function! g:BuffetSetCustomColors()
  hi! BuffetCurrentBuffer cterm=NONE ctermbg=5 ctermfg=8 guibg=#bd93f9 guifg=#000000
  hi! BuffetBuffer cterm=NONE ctermbg=10 ctermfg=8 guibg=#282a36 guifg=#000000
  hi! BuffetTab cterm=NONE ctermbg=4 ctermfg=8 guibg=#6272a4 guifg=#000000
  hi! BuffetActiveBuffer cterm=NONE ctermbg=10 ctermfg=2 guibg=#282a36 guifg=#bd93f9
endfunction

"PLUGINS: ------------------------------------------------------------------------------------
source ~/.config/nvim/user.config/plugs.vim
source ~/.config/nvim/user.config/vundle.init.vim

lua require("lsp-config")
lua require("nvim-tree").setup {}

colorscheme tokyonight
let g:airline_theme='dracula'
" colorscheme nord
" :colorscheme dracula

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

"KEYMAPS: ------------------------------------------------------------------------------------

:set completeopt-=preview " For No Previews

packloadall

source ~/.config/nvim/user.config/wilder.conf.vim
source ~/.config/nvim/user.config/minimap.conf.vim
source ~/.config/nvim/ck.vim
source ~/.config/nvim/user.config/keymaps.vim
source ~/.config/nvim/user.config/vim-buffet.conf.vim
