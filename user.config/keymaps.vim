
"
"V ~> select full current line
"$ ~> Go to end of line ?
"G ~> Go to end of file
"C ~> Cut rest of line after cursor
"
"Navigation:
nnoremap <C-f> :NvimTreeFocus<CR>
nnoremap <C-n> :NvimTreeOpen<CR>
nnoremap <C-p> :NvimTreeToggle<CR>
nnoremap <leader>f :lua require"telescope.builtin".find_files()<CR>
nnoremap <leader>s :lua require"telescope.builtin".live_grep()<CR>
nnoremap <leader>q :lua require"telescope.builtin".spell_suggest()<CR>
nnoremap <leader>c :lua require"telescope.builtin".git_commits()<CR>
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
vnoremap <C-Right> $
"
"Tabs:
nnoremap <leader>d :bn<CR>
nnoremap <leader>a :bp<CR>
nnoremap <leader>c :Bw<CR>
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

"
"Moving_fast:
nnoremap <A-Right> e
nnoremap <A-Left> b
inoremap <A-Right> <Esc>e
inoremap <A-Left> <Esc>b
vnoremap <A-Right> <Esc>egv
vnoremap <A-Left> <Esc>bgv
nnoremap w 3k
nnoremap s 3j
nnoremap W 10k
nnoremap S 10j
nnoremap <C-Right> <Esc>$
nnoremap <C-Left> <Esc>0
inoremap <C-Right> <Esc>$i
inoremap <C-Left> <Esc>0i
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

"Git: 
nnoremap gl :VGit project_logs_preview<CR>
nnoremap gd :VGit buffer_hunk_preview<CR>
nnoremap diff :DiffviewOpen<CR>
nnoremap edit :DiffviewClose<CR>

source ~/.config/nvim/user.config/chuck.conf.vim 
