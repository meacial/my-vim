set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
Bundle 'gmarik/vundle'
"my Bundle here:
"
" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'sukima/xmledit'
Bundle 'sjl/gundo.vim'
Bundle 'jiangmiao/auto-pairs'
"Bundle 'klen/python-mode'
Bundle 'Valloric/ListToggle'
Bundle 'SirVer/ultisnips'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
Bundle 't9md/vim-quickhl'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'Yggdroot/indentLine'
"..................................
" vim-scripts repos
Bundle 'YankRing.vim'
Bundle 'vcscommand.vim'
Bundle 'ShowPairs'
Bundle 'SudoEdit.vim'
Bundle 'EasyGrep'
Bundle 'VOoM'
Bundle 'VimIM'


Plugin 'Chiel92/vim-autoformat'
nnoremap <F6> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

"nnoremap <F3> :NERDTreeToggle<CR>

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
Plugin 'https://github.com/bling/vim-airline'



Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'https://github.com/bitc/vim-bad-whitespace'
Plugin 'https://github.com/tomasr/molokai'
Plugin 'easymotion/vim-easymotion'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'sillybun/setbreakpoints_python'
Plugin 'sillybun/autoformatpythonstatement'


"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on


map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec '!g++ % -o %<'
		exec '!time ./%<'
	elseif &filetype == 'cpp'
		exec '!g++ % -o %<'
		exec '!time ./%<'
        elseif &filetype == 'python'
	    	exec '!time python %'
       	elseif &filetype == 'sh'
            :!time bash %
        endif
endfunc

set nofoldenable

let g:ycm_min_num_of_chars_for_completion = 2  "开始补全的字符数"
let g:ycm_python_binary_path = 'python'  "jedi模块所在python解释器路径"
let g:ycm_seed_identifiers_with_syntax = 1  "开启使用语言的一些关键字查询"
let g:ycm_autoclose_preview_window_after_completion=1 "补全后自动关闭预览窗口"

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:SimpylFold_docstring_preview=1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
let g:airline#extensions#ale#enabled = 1
let g:autoformatpython_enabled = 1
set ic
set hlsearch incsearch
set cursorline
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,GB2312,big5
set autoindent
set smartindent
set scrolloff=4
set showmatch
set nu
set ignorecase smartcase
set showcmd

nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap tt :tab split<CR>
nnoremap <leader>j <C-f>zz
nnoremap <leader>k <C-b>zz
onoremap p i(
onoremap in( :<c-u>normal! f(vi(<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>


" for LISP
autocmd FileType lisp inoremap ` ()<Esc>ha
autocmd FileType lisp inoremap ;let (let ())<Esc>hha
"
" " for python
let python_highlight_all=1
au Filetype python set tabstop=4
au Filetype python set softtabstop=4
au Filetype python set shiftwidth=4
au Filetype python set textwidth=180
au Filetype python set expandtab
au Filetype python set autoindent
au Filetype python set fileformat=unix
autocmd Filetype python set foldmethod=indent
autocmd Filetype python set foldlevel=99
autocmd FileType python nnoremap <Space> za
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
"
"" for youcompleteme
autocmd Filetype python,c,cpp,Java,vim nnoremap <leader>gd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
let g:ycm_min_num_of_chars_for_completion=2

set textwidth=200


" for nerdtree
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <F3> :NERDTreeToggle<CR>
"nnoremap <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'



