" ===================================
" fanmh's vimrc (Windows Evns)
" builted: 2018-07-16
" ===================================
"

set nocompatible                                " be iMproved

" ALWAYS PUT PLUGINS FIRST PLACE
" TO ADVOID SOME SILLY MISTAKES.
" #############################
"  Part-I:  Plugins
" #############################
" ----------------------------
" " Vundle for plugins management
" ----------------------------
filetype off                                    " required

set rtp+=$HOME/.vim/bundle/Vundle.vim/          " set the runtime path to include Vundle and initialize
" set rtp+= ~/vimfiles/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path and call
" vundle#begin('~/some/path/here')
" NOTE: all the Plugins which is managed
" by Vundle must lie between
" vundle#begin() and vundle#end
    
    "-------------------=== Vundle itself ===-------------
    Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required

    "-------------------=== Code/Project navigation ===-------------
    " Plugin 'scrooloose/nerdtree'                " Project and file navigation
    Plugin 'majutsushi/tagbar'                  " Class/module browser
    Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files
    Plugin 'nathanaelkane/vim-indent-guides'    " indent guides visulized
    Plugin 'kshenoy/vim-signature'              " bookmark etc
    Plugin 'easymotion/vim-easymotion'

    "-------------------=== Other ===-------------------------------
    Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plugin 'flazz/vim-colorschemes'             " Colorschemes
    Plugin 'altercation/vim-colors-solarized'   " solarized 
    Plugin 'jnurmine/Zenburn'
    " Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
    " Plugin 'rosenfeld/conque-term'              " Consoles as buffers

    "-------------------=== Snippets support ===--------------------
    " Plugin 'garbas/vim-snipmate'                " Snippets manager
    " Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
    " Plugin 'tomtom/tlib_vim'                    " dependencies #2
    " Plugin 'SirVer/ultisnips'
    " Plugin 'honza/vim-snippets'                 " snippets repo

    "-------------------=== Languages support ===-------------------
    Plugin 'supertab'
    Plugin 'tpope/vim-commentary'                 " Comment stuff out
    Plugin 'tpope/vim-fugitive'
    Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    " Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin
    " Plugin 'Valloric/YouCompleteMe'             " Autocomplete plugin
    " Plugin 'davidhalter/jedi-vim'

    "-------------------=== Code checking= ==-----------------------------
    Plugin 'python-mode/python-mode'
    " Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim
    Plugin 'w0rp/ale'

    " local installation using the ['file://'+'absolute path'] protocol

    " other plugins
    " =============
    " Plugin 'altercation/vim-colors-solarized'
    " Plugin 'itchyny/lightline.vim'
    " Plugin 'octol/vim-cpp-enhanced-highlight'
    " Plugin 'suan/vim-instant-markdown'
    " Plugin 'derekwyatt/vim-fswitch'
call vundle#end()            " required
filetype on
filetype plugin on
filetype plugin indent on    " required



" #############################
"  Part-II: <Leader> relative
" #############################
let mapleader=","		" leader set to be the comma
" -----------------------------------
" groups of <leader> + ?  | Short Cut
" -----------------------------------

" source vimrc 
nnoremap <leader><leader>s :source ~/_vimrc<cr>
" shotcut for edit ~/_vimrc
" $MYVIMRC == ~/_vimrc<cr>, True.
nnoremap <leader>ev :vs $MYVIMRC<cr>
" quick save/exit etc
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
" vertical split help
nnoremap <leader>vh :vert help<cr>


" yanking/pasting with system clipboard
" pasting from sys clipboard to vim
nmap <leader>v "+gp  
" yank to sys clipboard only in Visual Mode
vnoremap <leader>c "+y  


" shotcuts to new tabs and moving around
nnoremap <leader>] :tabn<cr>
nnoremap <leader>[ :tabp<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
" nnoremap <leader>to :tabonly<cr>
" nnoremap <leader>tm :tabmove<cr>
" nnoremap <leader>tl :tablast<cr>

" quick select buffer and delete it
nnoremap <leader>bn :bnext<cr>
nnoremap <leader>bp :bprevious<cr>
nnoremap <leader>bd :bd<cr>
" turn off highlights
nnoremap <leader><space> :nohlsearch<cr>

" Commenting blocks of code, e.g., sh, python
noremap <silent> <Leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<cr>/<cr>:nohlsearch<cr>
noremap <silent> <Leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<cr>//e<cr>:nohlsearch<cr>

" windows/panes resize
nmap <space>w :vertical resize +3<cr>
nmap W- :vertical resize -3<cr>

" ==== Leader settings end =============
"
"
" #############################
"  Part-III:  Set vim
" #############################
" enable syntax highlight
syntax enable
" allow variable syntax highlight approches instead of the default
syntax on

" Do not use a mouse, otherwise :set mouse=n/v/i/a
set mouse=
" backspace for del
set backspace=indent,eol,start
" Split windows manners
set splitbelow
set splitright
" Ctrl + j,k,l,h to move around the panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Searching
set incsearch
set hlsearch
set ignorecase
set smartcase
" UI settings
set laststatus=2
set ruler
set cursorline
set cursorcolumn
set number relativenumber
set showcmd
set wildmenu
set showmatch
set noshowmode
" always keep cursor away 5 lines from the bottom
set scrolloff=7
set sidescrolloff=3
" do not wrap the code
set nowrap
" code fold
set foldmethod=syntax
" do not fold when first startup vim
set nofoldenable

" py_PEP8
set encoding=utf-8
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

" #############################
"  Part-IV: colorcolumn groups
" #############################
" gui appearance && colorschemes
" Note: syntax enable is needed
syntax on
syntax enable
set background=dark
if has('gui_running')
    " GUI setting
    " colorscheme solarized
    " let g:solarized_termcolors=256
    " let g:solarized_contrast="normal"
    " call togglebg#map("<F5>")
    colorscheme zenburn                       " backup colorscheme
    set guifont=Lucida_Console:h10
    " set guifont=Lucida_Console:h10            " some other fonts
    au GUIEnter * simalt ~x                   " full screen when initiate gvim
    " gui no toolbar
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
else
    " syntax on
    " enable syntax highlight
    " syntax enable
    " set background=dark
    colorscheme solarized8_dark_low
    " let g:solarized_termcolors=16
    " colorscheme zenburn
endif



" #############################
" Part-V: plugin setting groups
" #############################

" ----------------------------
" jedi-vim settings
" ----------------------------
" let g:jedi#goto_command = "<leader>d"
" let g:jedi#goto_assignments_command = "<leader>g"
" let g:jedi#goto_definitions_command = "<S-f>"
" let g:jedi#documentation_command = "K"
" let g:jedi#usages_command = "<leader>n"
" let g:jedi#completions_command = "<C-Space>"
" let g:jedi#rename_command = "<leader>r"
" 
" " let g:jedi#use_splits_not_buffers = "left"
" let g:jedi#use_tabs_not_buffers = 1

" ----------------------------
" ctrlp settings
" ----------------------------
let g:ctrlp_map='<C-p>'                          " Invoke the Ctrlp in Normal mode
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_by_filename = 1                   " <C-d> toggle on/off inside
" let g:ctrlp_tabpage_position = 'ac'           " Put the new tab page 'a'fter 'c'urrent tab page
" let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
let g:ctrlp_max_files = 10000
" MRU mode options:~
let g:ctrlp_mruf_max = 250
let g:ctrlp_mruf_exclude = '^C:\\dev\\tmp\\.*' " Windows
let g:ctrlp_mruf_include = '\.py$\|\.rb$'
" Set this to 1 to show only MRU files in the current working directory: >
let g:ctrlp_mruf_relative = 0
" Note: you can use a custom mapping to toggle this option inside the prompt: >
let g:ctrlp_prompt_mappings = { 'ToggleMRURelative()': ['C-<F2>'] }
let g:ctrlp_mruf_case_sensitive = 1           " Avoid duplicate MRU entries

" dirs/filetypes should be ignore
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" remap commands
nnoremap <C-b> :CtrlPBuffer<cr>              " only to find the buffers
nnoremap <C-m> :CtrlPMRU<cr>                 " only to Most-Reccently-Used files



" ----------------------------
" tagbar settings
" ----------------------------
let g:tagbar_ctags_bin='d:/ctags58/ctags.exe'
let g:tagbar_left=1                           " fix to window left
let g:tagbar_width=30                         " 20 characters
let g:tagbar_autofocus=1
let g:tagbar_sort=0
let g:tagbar_show_linenumbers = 2     " show relative nu
let g:tagbar_expand = 1

nnoremap <silent> <F9> :TagbarToggle<CR>
" auto open and focus on tagbar when open the .py files;
" and close with .py buffer gone.
autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose

" ----------------------------
" EasyMotion settings
" ----------------------------
let g:EasyMotion_do_mapping=0  " disable default prefix <leader><leader>
let g:EasyMotion_smartcase=1   " case insensitive on
" find motions: line motions
map <leader>f <Plug>(easymotion-f)
map <leader>F <Plug>(easymotion-F)

" ----------------------------
" vim-indent-guides settings
" ----------------------------
let g:indent_guides_enable_on_vim_startup=0
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
" leader + i to turn on/off the indent_guide
nmap <silent> <leader>i <Plug>IndentGuidesToggle

" ----------------------------
" airline settings
" ----------------------------
let g:airline_theme='badwolf'
let g:airline_powerline_fonts=1
let g:airline#extensions#ale#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'

" ----------------------------
" ale settings
" ----------------------------
"
let g:ale_enabled = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'

let g:ale_linters_explicit = 1
let g:ale_linters = {
            \   'c++': ['clang'],
            \   'c': ['clang'],
            \   'python': ['pyflakes','flake8','pycodestyle', 'pydocstyle']
            \}
" let g:ale_python_pyflakes_executable = 1

let g:ale_fixers = {
            \   'python': ['autopep8', 'trim_whitespace', 'yapf']
            \}

let g:ale_set_signs = 1
let g:ale_sign_column_always = 1
let g:ale_echo_cursor = 1

let g:ale_open_list = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
" This can be useful if you are combining ALE with
" some other plugin which sets quickfix errors, etc.
let g:ale_keep_list_window_open = 0
" Show 10 lines of errors (default: 10)
let g:ale_list_window_size = 10

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

nmap <silent> [W <Plug>(ale_previous_wrap)
nmap <silent> ]W <Plug>(ale_next_wrap)


" ----------------------------
" snip settings
" ----------------------------
" let g:snippets_dir='~/.vim/bundle/vim-snippets/snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
" let g:UltiSinpsUsePythonVersion = 2
" let g:UltiSnipsExpandTrigger="<Tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" " ----------------------------
" " python-mode settings
" " ----------------------------
let g:pymode = 0
" " python executables for different plugins
let g:pymode_python='python'
let g:pymode_python_exrc='python3'
" " trim unused white space
let g:pymode_trim_whitespaces = 1
" " python option (not have to be ture)
" let g:pymode_options = 0
" let g:pymode_options_max_line_length = 79
" " quickfix windows
" let g:pymode_quickfix_minheight = 3
" let g:pymode_quickfix_maxheight = 10
" " PEP8 indent
" let g:pymode_indent = 1
" let g:pymode_folding = 0
" " documentation
" let g:pymode_doc=0
" let g:pymode_doc_bind='K'
" " virtualenv
" let g:pymode_virtualenv=1
" " let g:pymode_virtualenv_path = $VIRTUAL_ENV
" " code running
" let g:pymode_run=1
" let g:pymode_run_bind='<leader>r'
" " breakpoints
let g:pymode_breakpoint=0
" " let g:pymode_breakpoint_key='<leader>b'
" 
" " pymode code checking
" " --------------------
" " Commands:
" " :PymodeLint* -- Check code in current buffer
" " :PymodeLintToggle* -- Toggle code checking
" " :PymodeLintAuto* -- Fix PEP8 errors in current buffer automatically
" 
let g:pymode_lint=0                                         " Turn on code checking
" let g:pymode_lint_on_write = 1                              " check, iff saved && modified current buffer
" let g:pymode_lint_message = 1
" let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
" let g:pymode_lint_sort = ['E', 'I', 'C']
" let g:pymode_lint_cwindow = 1
" let g:pymode_lint_signs = 1
" let g:pymode_lint_todo_symbol = 'WW'
" let g:pymode_lint_comment_symbol = 'CC'
" let g:pymode_lint_visual_symbol = 'RR'
" let g:pymode_lint_error_symbol = 'EE'
" let g:pymode_lint_info_symbol = 'II'
" let g:pymode_lint_pyflakes_symbol = 'FF'
" 
" " rope
let g:pymode_rope=0
" " let g:pymode_rope_completion=0
" " let g:pymode_rope_complete_on_dot=0
" " let g:pymode_rope_auto_project=0
" " let g:pymode_rope_enable_autoimport=0
" " let g:pymode_rope_autoimport_generate=0
" " let g:pymode_rope_guess_project=0
" 
" 
" " syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all
" 
" " ====  ============================
" " Key   Command
" " ====  ============================
" " [[    Jump to previous class or function (normal, visual, operator modes)
" " ]]    Jump to next class or function  (normal, visual, operator modes)
" " [M    Jump to previous class or method (normal, visual, operator modes)
" " ]M    Jump to next class or method (normal, visual, operator modes)
" " aC    Select a class. Ex: vaC, daC, yaC, caC (normal, operator modes)
" " iC    Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)
" " aM    Select a function or method. Ex: vaM, daM, yaM, caM (normal, operator modes)
" " iM    Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)
" " ====  ============================
" " 
" " Enable pymode-motion
" let g:pymode_motion = 1
"                                  
" ----------------------------   
" Syntastic settings             
" NOTE: this plugin is similar
" with the pymode. I cannot
" tell the difference between
" their performent. Jan-25, 19
" ----------------------------
" 
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list=1
" let g:syntastic_enable_signs=1
" let g:syntastic_check_on_wq=1
" let g:syntastic_aggregate_errors=1
" let g:syntastic_loc_list_height=10
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_error_symbol=">>"
" let g:syntastic_style_error_symbol="S>"
" let g:syntastic_warning_symbol="->"
" let g:syntastic_style_warning_symbol="->"
" let g:syntastic_python_checkers=['pyflakes', 'pydocstyle', 'python']


" ----------------------------   
" autocmd groups
" ----------------------------
" highlight 'long' lines (>= 79 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%80v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=79
    " auto begin in newline when exceed 79 chars when program in python
    autocmd FileType python setlocal textwidth=79 formatoptions+=t
    " comment leader for different filetypes
   autocmd FileType sh,python let b:comment_leader = '# '
augroup END
