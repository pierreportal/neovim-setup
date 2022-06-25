:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8

call plug#begin()

#TODO: zdcx

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'http://github.com/vim-airline/vim-airline'
Plug 'http://github.com/preservim/nerdtree'
Plug 'http://github.com/tpope/vim-commentary'
Plug 'http://github.com/vim-airline/vim-airline'
Plug 'http://github.com/ap/vim-css-color'
Plug 'http://github.com/rafi/awesome-vim-colorschemes'
Plug 'http://github.com/ryanoasis/vim-devicons'
Plug 'http://github.com/tc50cal/vim-terminal'
Plug 'http://github.com/terryma/vim-multiple-cursors'
Plug 'http://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'http://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'http://github.com/pangloss/vim-javascript'
Plug 'http://github.com/leafgarland/typescript-vim'
Plug 'http://github.com/peitalin/vim-jsx-typescript'
Plug 'http://github.com/styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'http://github.com/jparise/vim-graphql'
Plug 'http://github.com/glepnir/dashboard-nvim'
Plug 'http://github.com/folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'http://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'http://github.com/nvim-lua/plenary.nvim'
Plug 'http://github.com/nvim-telescope/telescope.nvim'
Plug 'http://github.com/nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'http://github.com/dyng/ctrlsf.vim'
Plug 'http://github.com/neovim/nvim-lspconfig'
Plug 'http://github.com/SmiteshP/nvim-navic'
# TODO: fix: experiment ~ not working....
Plug 'http://github.com/LinArcX/telescope-command-palette.nvim'
Plug 'http://github.com/folke/which-key.nvim'
Plug 'http://github.com/kyazdani42/nvim-web-devicons'
Plug 'http://github.com/romgrk/barbar.nvim'
Plug 'http://github.com/folke/todo-comments.nvim'
Plug 'http://github.com/sindrets/diffview.nvim'
lua << EOF
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
EOF
Plug 'http://github.com/kyazdani42/nvim-web-devicons'
Plug 'http://github.com/folke/trouble.nvim'

lua << EOF
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
EOF
if has('nvim')
  function! UpdateRemotePlugins(...)
    " Needed to refresh runtime files
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction

  Plug 'http://github.com/gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
else
  Plug 'http://github.com/gelguy/wilder.nvim'

  " To use Python remote plugin features in Vim, can be skipped
  Plug 'http://github.com/roxma/nvim-yarp'
  Plug 'http://github.com/roxma/vim-hug-neovim-rpc'
endif
# TODO: end of experiment.



let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]

call plug#end()

# NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
# Telescope
nnoremap <leader>f <cmd>Telescope find_files<CR>

# Tabs
# nnoremap tn :tabnew<CR>
# nnoremap tc :tabclose<CR>
# nnoremap t] :tabNext<CR>
# nnoremap t[ :tabprevious<CR>
# nnoremap ts :tabs<CR>
nnoremap tn :tabnew<CR>
nnoremap tc :BufferClose<CR>
nnoremap t] :BufferNext<CR>
nnoremap t[ :BufferPrevious<CR>
nnoremap t1 :BufferGoto 1<CR>
nnoremap t2 :BufferGoto 2<CR>
nnoremap t3 :BufferGoto 3<CR>
nnoremap t4 :BufferGoto 4<CR>
nnoremap t5 :BufferGoto 5<CR>
nnoremap t6 :BufferGoto 6<CR>

vnoremap <C-c> "*y

nmap <C-b> :TagbarToggle<CR>

#:set completeopt-=preview " For No Previews

:colorscheme tokyonight

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


# nnoremap <C-a> :tabPrevious<CR>
# nnoremap <C-d> :tabNext<CR>

call wilder#setup({'modes': [':', '/', '?']})
