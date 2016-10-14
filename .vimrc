set nocompatible              " required
filetype off                  " required

"--------------Vundle Settings--------------"
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'xuhdev/SingleCompile'
Plugin 'w0ng/vim-hybrid'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()            " required
filetype plugin indent on    " required


"--------------YouCompleteMe Settings--------------"
"let g:ycm_register_as_syntastic_checker = 1
let g:Show_diagnostics_ui = 1 "default 1

"will put icons in Vim's gutter on lines that have a diagnostic set.
"Turning this off will also turn off the YcmErrorLine and YcmWarningLine
"highlighting
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_always_populate_location_list = 1 "default 0
let g:ycm_open_loclist_on_ycm_diags = 1 "default 1

let g:ycm_complete_in_strings = 1 "default 1
let g:ycm_collect_identifiers_from_tags_files = 0 "default 0
let g:ycm_path_to_python_interpreter = '' "default ''

let g:ycm_server_use_vim_stdout = 0 "default 0 (logging to console)
let g:ycm_server_log_level = 'info' "default info

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'  "where to search for .ycm_extra_conf.py if not found
let g:ycm_confirm_extra_conf = 1

let g:ycm_goto_buffer_command = 'same-buffer' "[ 'same-buffer', 'horizontal-split', 'vertical-split', 'new-tab' ]
let g:ycm_filetype_whitelist = { '*': 1 }
let g:ycm_key_invoke_completion = '<C-Space>'

nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>
nmap \e :lfirst<CR>
set completeopt-=preview

"--------------Syntastic------------------"
let g:syntastic_cpp_compiler = 'clang++' "Enable c++11 support
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

"--------------User Specific--------------"
if hostname() == 'MIKE'
	"Desktop
	set backupdir=D:/Downloads/Vim/Backups
	cd D:/Documents/Programming

elseif hostname() == 'mike-Aspire-5750G'
	"Laptop
	"cd ~/Documents/Programming
	set backupdir=~/vim/backups
    set directory=~/vim/backups
    let g:hybrid_custom_term_colors = 1 "Linux hack for hybrid colorscheme
    let g:hybrid_reduced_contrast = 1

else
	"Work
	
endif


"--------------General Commands--------------"
set makeprg=g++\ -std=c++11\ %
"set guifont=Hack:h8
colorscheme hybrid
set background=dark

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set cindent
set number
set wildmenu
set wildmode=full
set history=200
set colorcolumn=110 "Should be around the limit for horizontal code width.

"--------------General Mappings--------------"
nnoremap <F4> :make!<cr> "Prevent from jumping to first error
map <space> <leader>
nmap <A-k> O<Esc>j
nmap <A-j> o<Esc>k
nmap <A-[> /{<CR>
nmap <A-]> /}<CR>
nmap <A-{> ?{<CR>
nmap <A-}> ?}<CR>
nmap <F12> :set hlsearch!<CR>  

"--------------Plugin Remappings--------------"
"NERD_Commenter
nmap gc \cm
vmap gc \cm

"Single Compile
nmap <F9> :SCCompileAF -std=c++11<cr>
nmap <F10> :SCCompileRunAF -O0 -std=c++11<cr>

"--------------Other Stuff--------------"
filetype plugin indent on
syntax on
set hidden
set backspace=indent,eol,start
