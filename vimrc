
" ------------------ VUNDLE SETTINGS --------------------
" IMPORTANT VUNDLE COMMANDS
":PluginInstall				// installs all plugins listed below
":PluginInstall!			// forces recheck (i.e. updates plugins)
":PluginClean				// deletes all plugins not listed in .vimrc
":PluginList				// show all installed plugins
":Plugins					// list of all plugins found online
":PluginSearch!				// same as above, ! refreshes list (from online)
":PluginSearch! plugin_name // search for plugin with name
"
"
"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" all my plugins come after this line 

Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/nerdcommenter.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" ------------------------ END VUNDLE ---------------------------






" ------- General Settings -----"
set confirm
set hidden "allows reuse of unsaved buffer, also modifies undo for multiple files"
" Attempt to determine the type of a file based on its name and possibly its contents. Use this to allow "

" We have VCS -- we don't need this stuff.
set nobackup " We have vcs, we don't need backups.
set nowritebackup " We have vcs, we don't need backups.
set noswapfile " They're just annoying. Who likes them?

set autoread " when a file has changed on disk, just load it. Don't ask.
filetype indent plugin on
 
" ------- General Layout ------ "
set number
set wildmenu  "Navigate command autocompletion with left / right arrow"
set wildmode=list:longest,full "Enable command auto completion"
set showcmd " Show partial commands in the last line of the screen"
set laststatus=2 "Always shows status line (even if only one window open)"
set wrap	"turn on word wrapping"
set linebreak 

"set list		show whitespace at startup. To activate later: type :set list
set listchars=eol:⏎,tab:␉·,trail:␠,nbsp:⎵ "Show whitespace, to turn off: :set nolist"



" ------- Search Settings ------ "
"search is cs if there is one upper case letter in search string"
set ignorecase
set smartcase
set incsearch
set hlsearch

" ------- Editing Settings ------ "
set mouse=a
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab " use spaces instead of tabs.
set smarttab " let's tab key insert 'tab stops', and bksp deletes tabs.
set shiftround " tab / shifting moves to closest tabstop.
set autoindent " Match indents on new lines.
set smartindent " Intellegently dedent / indent new lines based on rules.

" ------- Key bindings ------ "
"yank until EOL"
map Y y$  

"press enter after searching to remove highlighting
nnoremap <CR> :noh<CR><CR>

" Visual line nav, not real line nav
" If you wrap lines, vim by default won't let you move down one line to the
" wrapped portion. This fixes that.
noremap j gj
noremap k gk


" So we don't have to reach for escape to leave insert mode.
" inoremap jf <esc>


"switch between buffers
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>

"switch between tabs
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>

" Provide hjkl movements in Insert and Command-line mode "
noremap! <A-h> <Left>
noremap! <A-j> <Down>
noremap! <A-k> <Up>
noremap! <A-l> <Right>

" Toggle spell checking
nnoremap <F5> :setlocal spell! spelllang=en_us<CR>

" Insert date and time
nnoremap <F7> "=strftime("%a, %d-%m-%y %H:%M")<CR>p

" Start nerdtree "
nnoremap <F2> :NERDTreeToggle <CR> 

" Prevent weird indent when pasting"
set pastetoggle=<F12>

