:set autoindent
:set softtabstop=4
:set shiftwidth=4
:set mouse=a
:set tabstop=4
:set smarttab
:set encoding=UTF-8
:set number
" :au CursorHold * :exec 'match Search /\V\<' . expand('<cword>') . '\>/'
"PLUGINS: ------------------------------------------------------------------------------------
call plug#begin()
Plug 'http://github.com/lfv89/vim-interestingwords'
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
"TO CLEAN: fix: experiment ~ not working....
Plug 'http://github.com/jose-elias-alvarez/null-ls.nvim'
Plug 'http://github.com/jose-elias-alvarez/nvim-lsp-ts-utils'
Plug 'http://github.com/startup-nvim/startup.nvim'
Plug 'http://github.com/nvim-neorg/neorg'
Plug 'http://github.com/LinArcX/telescope-command-palette.nvim'
Plug 'http://github.com/folke/which-key.nvim'
Plug 'http://github.com/kyazdani42/nvim-web-devicons'
Plug 'http://github.com/romgrk/barbar.nvim'
Plug 'http://github.com/folke/todo-comments.nvim'
Plug 'http://github.com/nvim-telescope/telescope-media-files.nvim'
Plug 'http://github.com/sindrets/diffview.nvim'
Plug 'http://github.com/nvim-lua/popup.nvim'
Plug 'http://github.com/anuvyklack/nvim-keymap-amend'
Plug 'http://github.com/anuvyklack/pretty-fold.nvim'
Plug 'http://github.com/kyazdani42/nvim-web-devicons'
Plug 'http://github.com/folke/trouble.nvim'
Plug 'http://github.com/matze/vim-move'
Plug 'http://github.com/mg979/vim-visual-multi', {'branch': 'master'}
Plug 'http://github.com/rbgrouleff/bclose.vim'
Plug 'http://github.com/francoiscabrol/ranger.vim'
Plug 'http://github.com/mattn/emmet-vim'
Plug 'http://github.com/tanvirtin/vgit.nvim'
Plug 'http://github.com/sindrets/diffview.nvim'

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
"
"V ~> select full current line
"$ ~> Go to end of line ?
"G ~> Go to end of file
"C ~> Cut rest of line after cursor
"gf ~> Open file linked at cursor
"
"Navigation:
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <leader>f <cmd>Telescope find_files<CR>
nnoremap <leader>r <cmd>Ranger<CR>
"
"Comments:
nnoremap <C-_> :Commentary<CR>
vnoremap <C-_> :'<,'>Commentary<CR>
"
"Moving_lines:
nnoremap <A-Up> :m -2<CR>
nnoremap <A-Down> :m +1<CR>
vnoremap <A-Down> :m +1<CR>gv
vnoremap <A-Up> :m -2<CR>gv
inoremap <A-Up> <Esc>:m -2<CR>
inoremap <A-Down> <Esc>:m +1<CR>
vnoremap < <gv
vmap <Tab> >gv
vmap > >gv
"
"Tabs:
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
"Moving_fast:
nnoremap <A-Right> e
nnoremap <A-Left> b
inoremap <A-Right> <Esc>e
inoremap <A-Left> <Esc>b
nnoremap w 3k
nnoremap s 3j
nnoremap W 10k
nnoremap S 10j
"
"Selection:
nnoremap V viw
vmap V V 
"
"Inspect:
nmap <C-b> :TagbarToggle<CR>
nnoremap fo gf
"
"Edit:
map <C-z> u
"
"Git: 
nnoremap gl :VGit project_logs_preview<CR>
nnoremap gd :VGit buffer_hunk_preview<CR>
nnoremap diff :DiffviewOpen<CR>
nnoremap edit :DiffviewClose<CR>
:set completeopt-=preview " For No Previews
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:ranger_map_keys = 0

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

call wilder#setup({'modes': [':',  '?']})
call wilder#set_option('renderer', wilder#popupmenu_renderer(wilder#popupmenu_palette_theme({
		\ 'pumblend':20,
		\ 'border': 'rounded',
		\ 'max_height': '75%',
		\ 'min_height': 0,
		\ 'prompt_position': 'bottom',
		\ 'reverse': 0,
		\ 'highlighter': wilder#basic_highlighter(),
		\ 'highlights': {
		\   'accent': wilder#make_hl('WilderAccent', 'Pmenu', [{}, {}, {'foreground': '#f4468f'}]),
		\ },
	\ })))
