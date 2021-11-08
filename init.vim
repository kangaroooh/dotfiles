" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin()

Plug 'morhetz/gruvbox'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'jacquesbh/vim-showmarks'
"Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'vim-syntastic/syntastic'
Plug 'rhysd/vim-clang-format'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/tagbar'

" Initialize plugin system
call plug#end()

" Custom UX
set background=dark
set smartcase
set visualbell
set number 
syntax on
set hlsearch
set number relativenumber

" Custom UI
colorscheme gruvbox

" Custom Keymap
let mapleader="\<Space>"
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt

nnoremap th :tabfirst<CR>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnext<Space>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>

nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>T :TagbarToggle<CR>
nnoremap <leader>fi :Files<CR>
nnoremap <leader>C :Colors<CR>
nnoremap <leader><CR> :Buffers<CR>
nnoremap <leader>fl :Lines<CR>
nnoremap <nowait><leader>r :Rg<CR>
nnoremap <leader>rg :Rg! <C-R><C-W><CR>
nnoremap <leader>m :History<CR>

nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>f :<C-u>ClangFormat<CR>
nmap <leader>rn :<Plug>(coc-rename)
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
let g:syntastic_cpp_cpplint_exec = 'cpplint'
" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
