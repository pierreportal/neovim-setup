:set autoindent
:set number
:set smarttab
:set mouse=a
:set softtabstop=4
:set tabstop=4
:set encoding=UTF-8
:set shiftwidth=4


"PLUGINS: ------------------------------------------------------------------------------------
call plug#begin()
Plug 'http://github.com/rafi/awesome-vim-colorschemes'
Plug 'http://github.com/ryanoasis/vim-devicons'
Plug 'http://github.com/tc50cal/vim-terminal'
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'http://github.com/vim-airline/vim-airline'
Plug 'http://github.com/preservim/nerdtree'  
Plug 'http://github.com/tpope/vim-commentary'
Plug 'http://github.com/vim-airline/vim-airline'
Plug 'http://github.com/ap/vim-css-color'    
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
"TOFIX: fix: experiment ~ not working....
Plug 'http://github.com/jose-elias-alvarez/null-ls.nvim'
Plug 'http://github.com/jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'http://github.com/startup-nvim/startup.nvim'
Plug 'http://github.com/nvim-neorg/neorg'
Plug 'http://github.com/LinArcX/telescope-command-palette.nvim'
Plug 'http://github.com/folke/which-key.nvim'
Plug 'http://github.com/kyazdani42/nvim-web-devicons'
Plug 'http://github.com/romgrk/barbar.nvim'
Plug 'http://github.com/folke/todo-comments.nvim'
Plug 'http://github.com/sindrets/diffview.nvim'
Plug 'http://github.com/nvim-lua/popup.nvim'
Plug 'http://github.com/nvim-telescope/telescope-media-files.nvim'
Plug 'http://github.com/anuvyklack/nvim-keymap-amend'
Plug 'http://github.com/anuvyklack/pretty-fold.nvim'
Plug 'http://github.com/kyazdani42/nvim-web-devicons'
Plug 'http://github.com/folke/trouble.nvim'
Plug 'http://github.com/matze/vim-move'
Plug 'http://github.com/mg979/vim-visual-multi', {'branch': 'master'}

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
"END PLUGINS: ------------------------------------------------------------------------------------
"
"CONFIG: Load lua config

lua require("lsp-config")

:colorscheme tokyonight

"KEYMAPS: ------------------------------------------------------------------------------------
"V ~> select full current line
"$ ~> Go to end of line ?
"G ~> Go to end of file
"C ~> Cut rest of line after cursor
"gf ~> Open file linked at cursor
"NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
"Telescope
nnoremap <leader>f <cmd>Telescope find_files<CR>
"Comments
nnoremap <C-_> :Commentary<CR>
"Move lines
nnoremap <A-Up> :m -2<CR>
nnoremap <A-Down> :m +1<CR>
vmap <A-Down> :'<,'>m +`<<CR>
"Tabs
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
"
"
nnoremap <A-Right> w
nnoremap <A-Left> b
nnoremap <C-Up> h
nnoremap V viw
vmap V V 
"
"
nmap <C-b> :TagbarToggle<CR>
":set completeopt-=preview " For No Previews
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

call wilder#setup({'modes': [':', '/', '?']})
