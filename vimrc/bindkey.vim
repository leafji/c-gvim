" key map 
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <silent> <Leader>tl :TlistToggle<CR>
nnoremap <silent> <leader>vr :tabnew ~/.vimrc<cr>
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <F3> :Ag -iw --ignore=tags <C-R>=expand('<cword>')<CR>
nnoremap <C-f> :Files<CR>
nnoremap <silent> <Leader>b :Buffers<CR>
nnoremap <C-s> :Tags<CR>
nnoremap <silent> <Leader>tg :TagbarToggle<CR>
nnoremap <silent> <Leader>mr :MRU<CR>
nnoremap <silent> <Leader>cc :call CompileRunGcc()<CR>
" fugitive
nnoremap <silent> <Leader>gs :Gstatus<CR>
nnoremap <silent> <Leader>gt :Gcommit<CR>
nnoremap <silent> <Leader>gd :Gdiffsplit<CR>
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>q  :q<CR>

" dlv debug-go
nnoremap <F5> :GoDebugBinary<cr>
nnoremap <F6> :GoDebugFile<cr>

" fast enter crdb source path
nnoremap <silent> <leader>cd :cd /Users/leafji/MyGo/src/github.com/cockroachdb/cockroach<cr>

" youdao dict
vnoremap <silent> <C-G> :<C-u>Ydv<CR>
nnoremap <silent> <C-G> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>
noremap <leader>as :tabnew ~/.vim/ascii.md<CR>

