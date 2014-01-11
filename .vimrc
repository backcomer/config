"""""""""""""""""""""""""""""""""""""""""""""
"For Vunble
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"My Packages
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/taglist.vim'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/DoxygenToolkit.vim'
Bundle 'corntrace/bufexplorer'
Bundle 'motemen/git-vim'
Bundle 'tomasr/molokai'
Bundle 'Raimondi/delimitMate'
Bundle 'Yggdroot/indentLine'
Bundle 'tomasr/molokai'
Bundle 'SirVer/ultisnips'
Bundle 'ivanov/vim-ipython'
Bundle 'vim-scripts/a.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'endel/vim-github-colorscheme'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
"""""""""""""""""""""""""""""""""""""""""""""
"高亮设置
filetype plugin indent on
filetype on
syntax on

"支持中文字体
set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
"缩进设置       
set tabstop=4      
set shiftwidth=4    
set smarttab        
set autoindent

"搜索设置 
set hlsearch        
set incsearch      
set ignorecase    
set smartcase    
"编辑设置
"""状态栏
set laststatus=2
"""显示行号
set nu
"""显示匹配括号
set showmatch
set textwidth=79    
"""格式化模式
set formatoptions=c,q,r,t 

"""允许鼠标操作
set mouse=a         

"""highlight current line
set cursorline
"其他
set encoding=utf-8
set t_Co=256
"配色方案
colorscheme molokai
"Font
set guifont=Monaco
"""备份文件位置
set backupdir=~/.vim/backup
"""补全
autocmd FileType python set omnifunc=pythoncomplete#Complete
"SuperTab
let g:SuperTabLongestHighlight=1
"键位绑定
map <F2> :TlistToggle<CR>
map <F3> :NERDTreeToggle<CR>
"""bufexplorer
map <F12> <leader>be
"""关闭其他buffer
map <leader>o :only<CR>
"""切换目录至当前buffer的文件目录
map <leader>h :cd %:h<CR>
map <leader>a :A<CR>
"""窗口间移动
map <c-l> <c-w>l
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
"""TAB
map <leader>tt :tabnew<CR>
map <leader>tn :tabnext<CR>
map <leader>tp :tabprevious<CR>
"插件参数设定
"TagsView
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
"IndentLine
let g:indentLine_color_term=239
let g:indentLine_color_gui='#A4E57E'
let g:indentLine_indentLevel=5
"Ultisnip
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
"bufexplorer
let g:bufExplorerShowDirectories=1
"ipython
map <leader>p :IPython<CR>
