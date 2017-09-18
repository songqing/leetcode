set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
"Bundle "Markdown"

Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'The-NERD-tree'
Bundle 'scrooloose/nerdcommenter'
Plugin 'taglist.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

autocmd InsertLeave * se nocul " 用浅色高亮当前行
autocmd InsertEnter * se cul " 用浅色高亮当前行
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")} "状态行显示的内容
inoremap <F1> <ESC>
vnoremap <F1> <ESC>
"a修改 vmirc 后自动生效
autocmd! bufwritepost .vimrc source ~/.vimrc
"共享剪贴板
set clipboard+=unnamed
set ruler " 打开状态栏标尺
set cursorline " 突出显示当前行

"从不备份
set nobackup
" 去掉输入错误的提示声音
set noeb

" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
"搜索忽略大小写
set ignorecase
"搜索逐字符高亮
set hlsearch
set incsearch

" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 允许backspace和光标键跨越行边界
set whichwrap+=<,>,h,l

"let g:ycm_global_ycm_extra_conf = '~/.ycm_c.py'   "配置默认的ycm_extra_conf.py
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'   "配置默认的ycm_extra_conf.py
let g:ycm_confirm_extra_conf=0    "打开vim时不再询问是否加载ycm_extra_conf.py配置

let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_error_symbol = '*'
let g:ycm_warning_symbol = '!'
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

""""""""" Settings of taglist""""""""""""""
" increase the width of the taglist window
let Tlist_WinWidth=30
" automatically open the taglist window 
let Tlist_Auto_Open=0
" exit wim when only the taglist window exist
let Tlist_Exit_OnlyWindow=1
" open tags with single click
let Tlist_Use_SingleClick=1
" close tag folds for inactive buffers
let Tlist_File_Fold_Auto_Close=1
" show the fold indicator column in the taglist window 
let Tlist_Enable_Fold_Column=1
" Automatically update the taglist to include newly edited files
let Tlist_Auto_Update=1

let Tlist_Use_Right_Window=0
""""""""""""ctags settings"""""""""""""""""
set tags=tags
"""""""""" NERDtree settings"""""""""""""""
let NERDTreeWinPos='right'
let g:NERDChristmasTree = 0
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeWinSize = 30

filetype plugin on
filetype indent on
filetype on                  " required
