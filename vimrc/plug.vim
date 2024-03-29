" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'        
Plug 'MattesGroeger/vim-bookmarks' 
Plug 'scrooloose/nerdtree'         
Plug 'maciakl/vim-neatstatus'      
Plug 'jakwings/vim-colors'
Plug 'vim-scripts/taglist.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'dbgx/lldb.nvim'
Plug 'junegunn/fzf.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown', {'for': 'markdown'}
Plug 'fatih/vim-go'
Plug 'rking/ag.vim'
Plug 'majutsushi/tagbar' 
Plug 'scrooloose/nerdcommenter'
Plug 'yegappan/mru'
Plug 'johngrib/vim-game-code-break'
"Plug 'terryma/vim-multiple-cursors'
"Plug 'zxqfl/tabnine-vim'
Plug 'fatih/molokai'
Plug 'nsf/gocode', {'rtp': 'vim/'}
Plug 'mhinz/vim-startify'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/vim-emoji'
Plug 'pseewald/vim-anyfold'
Plug 'jsfaint/gen_tags.vim'
Plug 'leafji/NeovimGdb'
Plug 'vimlab/split-term.vim'
Plug 'ycm-core/YouCompleteMe'
"Plug 'zxqfl/tabnine-vim'
Plug 'SirVer/ultisnips'
"Plug 'vim-scripts/vim-cursorword'
Plug 'lfv89/vim-interestingwords'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'rhysd/vim-goyacc'
"Plug 'ludovicchabant/vim-gutentags'
Plug 'wannesm/wmgraphviz.vim'
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'szw/vim-dict'
Plug 'ianva/vim-youdao-translater'
"Plug 'rhysd/nyaovim-markdown-preview'
Plug 'sstallion/vim-cursorline'
Plug 'roxma/vim-window-resize-easy'
Plug 'simeji/winresizer'
Plug 'liuchengxu/graphviz.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'regedarek/neovim-clipboard'
Plug 'easymotion/vim-easymotion'
Plug 'mbbill/undotree'
Plug 'vimlab/split-term.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jiangmiao/auto-pairs'
"Plug 'dense-analysis/ale'
call plug#end()

