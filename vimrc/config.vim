" 1---- vim-bookmarks settings
let g:bookmark_auto_close = 1
let g:bookmark_save_per_working_dir = 1
let g:bookmark_highlight_lines = 1
let g:bookmark_center = 1
let g:bookmark_location_list = 1
" 2---- NERDTree settings
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeChDirMode=1
"" 显示书签
let NERDTreeShowBookmarks=1
"" 设置忽略文件类型
let NERDTreeIgnore=['\~$','\.o','\.swp$']
" 窗口大小
let NERDTreeWinSize=25
" 修改默认箭头
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
" 3--- molokai theme is best in
colorscheme molokai
colorscheme nord
" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
" 显示行号
let NERDTreeShowLineNumbers=0
let NERDTreeAutoCenter=1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
"4---- ctags 
"set tags=/Users/leafji/pg/postgresql-11.4/src/tags
"set tags=/Users/leafji/MyGo/src/github.com/cockroachdb/cockroach/c-deps/postgresql/tags
"set tags=/Users/leafji/.vim/ctags/cpp
"set tags+=/Users/leafji/MyGo/src/github.com/cockroachdb/cockroach/pkg/tags
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

"5---- taglist
let Tlist_Use_Right_Window = 1          "让taglist窗口出现在Vim的右边
let Tlist_File_Fold_Auto_Close = 1      "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
let Tlist_Show_One_File = 1             "只显示一个文件中的tag，默认为显示多个
let Tlist_Sort_Type ='name'             "Tag的排序规则，以名字排序。默认是以在文件中出现的顺序排序
let Tlist_GainFocus_On_ToggleOpen = 1       "Taglist窗口打开时，立刻切换为有焦点状态
let Tlist_Exit_OnlyWindow = 1           "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_WinWidth = 32             "设置窗体宽度为32，可以根据自己喜好设置
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'  "这里比较重要了，设置ctags的位置，不是指向MacOS自带的那个，而是我们用homebrew安装的那个

"6--- vim air setting
let g:airline_powerline_fonts = 1   " 使用powerline打过补丁的字体
let g:airline_theme="dracula"      " 设置主题
let g:airline#extensions#tabline#enabled = 1      "tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = '▶'   "tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '❯'      "tabline中buffer显示编号
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#right_sep = '◀'
let g:airline#extensions#tabline#right_sep = '❮'
let g:python3_host_prog='/usr/local/bin/python3'
let g:airline#extensions#tabline#left_sep= ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep= ''
let g:airline#extensions#tabline#right_alt_sep = ''
"7--- fzf

"8--- C/C++ one key compile
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!g++ -g % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ -g % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'java' 
		exec "!javac %" 
		exec "!time java %<"
	elseif &filetype == 'sh'
		:!time bash %
	elseif &filetype == 'python'
		exec "!time python2.7 %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
	endif
endfunc
let g:syntastic_python_python_exec ='python3'
let g:ycm_use_clangd = 0
set nofoldenable

"9--- vim-go
let g:go_fmt_command = "goimports"
let g:go_term_mode = 1

"10--- neocomplcache
" Disab le AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 1
" set the max list in the popup menu. increase the speed
let g:neocomplcache_max_list=20
" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
	let g:neocomplcache_keyword_patterns = {}
endif
	let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
let g:neocomplcache_auto_completion_start_length=1
" ignore letter case
let g:neocomplcache_enable_ignore_case=1

"11--- OmniCpp
let OmniCpp_MayCompleteDot=1
let OmniCpp_MayCompleteArrow=1
let OmniCpp_MayCompleteScope=1
let OmniCpp_NamespaceSearch=1
"let OmniCpp_GlobalScopeSearch=1  
"let OmniCpp_DefaultNamespace=["std"]  
let OmniCpp_ShowPrototypeInAbbr=1
let OmniCpp_SelectFirstItem = 2
set runtimepath^=~/.vim/bundle/ag
let g:ag_working_path_mode="r"
let g:ag_highlight=1

"12--- ag
let g:ackprg = 'ag --nogroup --nocolor --column'

"13--- MRU 
let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'
let MRU_Include_Files = '\.c$\|\.h$'
let MRU_Window_Height = 15
let MRU_Use_Current_Window = 1
let MRU_Auto_Close = 0
let MRU_Max_Menu_Entries = 10
let MRU_Open_File_Use_Tabs = 0

"14--- multi-cursor
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_start_word_key      = '<C-m>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key           = 'g<C-m>'
let g:multi_cursor_select_all_key      = 'g<A-m>'
let g:multi_cursor_next_key            = '<C-m>'
let g:multi_cursor_prev_key            = '<C-l>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"15--- tpope/vim-fugitive

"16--- emoji
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')

"17--- foler
autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
set foldlevel=0
hi Folded term=NONE cterm=NONE

"18---- indentline
" Vim
let g:indentLine_enabled = 1
let g:indentLine_color_term = 239
" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
" Background (Vim, GVim)
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
autocmd FileType defx call s:defx_mappings()<Paste>
"19--- startify
let g:startify_custom_header = [
            \ '+-----------------------------------+',
            \ '|                                   |',
            \ '|    Coding Job is so terriable !   |',
            \ '|    Only pokemon can save us !!    |',
            \ '|                                   |',
            \ '+----------------+------------------+',
            \'  　　 へ　　　　　／|',
            \'　　/＼7　　∠＿/',
            \'　 /　│　　 ／　／',
            \'　│　Z ＿,＜　／　　 /`ヽ',
            \'　│　　　　　ヽ　　 /　　〉',
            \'　 Y　　　　　`　 /　　/',
            \'　ｲ●　､　●　　⊂⊃〈　　/',
            \'　()　 へ　　　　|　＼〈',
            \'　　>ｰ ､_　 ィ　 │ ／／',
            \'　 / へ　　 /　ﾉ＜| ＼＼',
            \'　 ヽ_ﾉ　　(_／　 │／／',
            \'　　7　　　　　　　|／',
            \'　　＞―r￣￣`ｰ―＿',
            \]
let g:startify_custom_footer = [
            \ '+-----------------------------------+',
            \ '|    No Bug is impossible!          |',
            \ '+----------------+------------------+',
            \]
"20 ---- split term  
let g:disable_key_mappings = 0

"21 ----- ycm config
let g:ycm_python_binary_path = '/usr/local/bin/python3'
" C family Completion Path
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" 停止提示是否载入本地ycm_extra_conf文件
let g:ycm_confirm_extra_conf = 0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax = 1
" 开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:ycm_key_invoke_completion = ['<C-Space>']
" 停止显示补全列表(防止列表影响视野), 可以按<C-Space>重新弹出
"let g:ycm_key_list_stop_completion = ['<C-y>']

" dle
"let g:ale_linters = {
"\   'go': ['gometalinter', 'gofmt'],
"\}
"
" 22---- gutenctags config
let g:gutentags_ctags_executable='/usr/local/bin/ctags'
" gutentags搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归 "
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
" 所生成的数据文件的名称 "
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录 "
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 检测 ~/.cache/tags 不存在就新建 "
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
" 配置 ctags 的参数 "
let g:gutentags_ctags_extra_args = ['--languages=c,c++,Go','--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+pxI']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 23----- lldb
" lldb 配置
"nnoremap <C-A> :LLsession load lldb-nvim.json<CR>
"nmap <C-b> <Plug>LLBreakSwitch
"vmap <F3> <Plug>LLStdInSelected
"nnoremap <F4> :LLstdin<CR>
"nnoremap <F5> :LL c<CR>
"nnoremap <C-C> :LLmode debug<CR>
"nnoremap <C-L> :LLmode code<CR>
"nnoremap <F7> :LL step<CR>
"nnoremap <F8> :LL n<CR>
"nnoremap <F9> :LL finish<CR>
"nnoremap <C-Q> :LL attach -p
"nnoremap <F1> :LL print <C-R>=expand('<cword>')<CR>
"vnoremap <F1> :<C-U>LL print <C-R>=lldb#util#get_selection()<CR><CR>

" 24---- markdown
let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0

" 25---- NeoVimGdb - dlv bianry cmd 
let g:nvimdlv_binary_cmd = 'pkill -9 cockroach;dlv --check-go-version=false exec /Users/leafji/MyGo/src/github.com/cockroachdb/cockroach/cockroach -- start --insecure --listen-addr 127.0.0.1:26259'
"let g:nvimdlv_binary_cmd = 'dlv attach `ps -ef | grep \"[c]ockroach start\" | awk '{print $2}'`


