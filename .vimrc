"For Vunble
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

"My Packages
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/taglist.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/DoxygenToolkit.vim'
Plugin 'corntrace/bufexplorer'
Plugin 'motemen/git-vim'
Plugin 'tomasr/molokai'
Plugin 'Raimondi/delimitMate'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'vim-scripts/a.vim'
Plugin 'endel/vim-github-colorscheme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'kshenoy/vim-signature'
Plugin 'vim-scripts/javacomplete'
"Golang
Plugin 'fatih/vim-go'
Plugin 'scrooloose/syntastic'
Plugin 'rjohnsondev/vim-compiler-go'
Plugin 'vim-jp/vim-go-extra'

call vundle#end()
"""""""""""""""""""""""""""""""""""""""""""""
"高亮设置
filetype plugin indent on
filetype on
syntax on

"支持中文字体
set fenc=utf-8
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,ucs-bom,cp936
set langmenu=zh_CN.utf-8
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
language messages zh_cn.utf-8 
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
set t_Co=256
set history=100
"配色方案
colorscheme molokai
"Font
set guifont=Consolas:h11
"""备份文件位置
set backupdir=~/.vim/backup
"SuperTab
let g:SuperTabLongestHighlight=1
"键位绑定
map tl :TlistToggle<CR>
map fl :NERDTreeToggle<CR>
"""bufexplorer
map <c-F12> <leader>be
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
"""Tab 移动
map <m-j> :tabNext<CR>
map <m-k> :tabprevious<CR>
map <m-x> :tabclose<CR>
map <m-n> :tabnew<CR>
"airline
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

"""运行 
autocmd Filetype ruby map <F5> :!ruby %<CR>
autocmd Filetype go map <F5> :!go run %<CR>

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
"airline
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#left_sep='|'
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#right_sep='|'
let g:airline#extensions#tabline#right_alt_sep='|'
let g:airline_left_sep = '>'
let g:airline_right_sep = '<'
let g:airline_theme='badwolf'
"Javacomplete
autocmd Filetype java,jsp,javascript set omnifunc=javacomplete#Complete
