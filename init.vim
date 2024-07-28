set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set encoding=UTF-8
set showmatch
set sw=2
set relativenumber
inoremap ( ()<Esc>i
"this line is add to use the COC in windows terminal
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap (<CR> (<CR>)<Esc>O
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>O
inoremap [ []<Esc>i
inoremap [<CR> [<CR>]<Esc>O
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
inoremap ` ``<Esc>i

call plug#begin('~/.vim/plugged')
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'neoclide/coc.nvim',{'branch':'release'}
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'michaelb/sniprun', {'do': 'bash install.sh'}
Plug 'preservim/nerdcommenter'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'OmniSharp/omnisharp-vim'
Plug 'Yggdroot/indentLine'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
call plug#end()

colorscheme tokyonight

let NERDTreeQuitOnOpen=1
let mapleader = " "


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>cl :NERDCommenterToggle<CR>
nmap <Leader>cp :NERDCommenterSexy<CR>
nmap <Leader>ci :NERDCommenterInvert<CR>
nmap <Leader>p :Prettier<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>wf :w!<CR>
nmap <Leader>qf :q!<CR>
nmap <Leader>wq :wq<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>sp :<,>SnipRun<CR>
nmap <Leader>e <c-y>,
nmap <Leader>v <c-y>v
nmap <Leader>a 10<C-w><
nmap <Leader>d 10<C-w>>
nmap <Leader>u 20<C-e>
nmap <Leader>j 20<C-y>
nmap <Leader>; $a;<Esc>
nmap <Leader>cd <Plug>(coc-definition)
nmap <Leader>cy <Plug>(coc-type_definition)
nmap <Leader>cr <Plug>(coc-references)
nmap <Leader>co <Plug>(coc-implementation)
nmap <Leader>< :bprev<CR>
nmap <Leader>> :bnext<CR>


" closetag configuration

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'
