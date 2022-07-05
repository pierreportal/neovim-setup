
"
"V ~> select full current line
"$ ~> Go to end of line ?
"G ~> Go to end of file
"C ~> Cut rest of line after cursor
"gf ~> Open file linked at cursor
"
"Navigation:
nnoremap <C-f> :NvimTreeFocus<CR>
nnoremap <C-n> :NvimTreeOpen<CR>
nnoremap <C-p> :NvimTreeToggle<CR>
nnoremap <leader>f <cmd>Telescope find_files<CR>
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
