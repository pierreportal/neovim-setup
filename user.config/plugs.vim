
call plug#begin()
" Plug '/Users/pierreportal/dev/_tools/my-vim-plugins/vimsniff.nvim'
Plug 'http://github.com/rafi/awesome-vim-colorschemes'
Plug 'http://github.com/ryanoasis/vim-devicons'
Plug 'http://github.com/tc50cal/vim-terminal'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'http://github.com/vim-airline/vim-airline'
Plug 'http://github.com/tpope/vim-commentary'
Plug 'http://github.com/vim-airline/vim-airline'
Plug 'http://github.com/ap/vim-css-color'    
" Plug 'http://github.com/terryma/vim-multiple-cursors'
Plug 'http://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'http://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'http://github.com/pangloss/vim-javascript'
Plug 'http://github.com/leafgarland/typescript-vim'
Plug 'http://github.com/peitalin/vim-jsx-typescript'
Plug 'http://github.com/styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'http://github.com/jparise/vim-graphql'
Plug 'http://github.com/folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'http://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'http://github.com/nvim-lua/plenary.nvim'
Plug 'http://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'http://github.com/neovim/nvim-lspconfig'
Plug 'http://github.com/SmiteshP/nvim-navic'
Plug 'http://github.com/jose-elias-alvarez/null-ls.nvim'
Plug 'http://github.com/jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'http://github.com/folke/which-key.nvim'
Plug 'http://github.com/folke/todo-comments.nvim'
Plug 'http://github.com/sindrets/diffview.nvim'
Plug 'http://github.com/nvim-lua/popup.nvim'
Plug 'http://github.com/anuvyklack/nvim-keymap-amend'
Plug 'http://github.com/folke/trouble.nvim'
Plug 'http://github.com/mg979/vim-visual-multi', {'branch': 'master'}
Plug 'http://github.com/rbgrouleff/bclose.vim'
Plug 'http://github.com/mattn/emmet-vim'
Plug 'http://github.com/tanvirtin/vgit.nvim'
Plug 'http://github.com/sindrets/diffview.nvim'
Plug 'http://guthub.com/prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'http://github.com/kyazdani42/nvim-web-devicons' " optional, for file icons
Plug 'http://guthub.com/kyazdani42/nvim-tree.lua'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'https://github.com/wfxr/minimap.vim'
Plug 'https://github.com/windwp/nvim-autopairs'
Plug 'https://github.com/bagrat/vim-buffet'
Plug 'https://github.com/nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
if has('nvim')
  function! UpdateRemotePlugins(...)
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction
  Plug 'http://github.com/gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'http://github.com/gelguy/wilder.nvim'
  Plug 'http://github.com/roxma/vim-hug-neovim-rpc'
  Plug 'http://github.com/roxma/nvim-yarp'
endif
"ENDTOFIX: end of experiment.

let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

call plug#end()
