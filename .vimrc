call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
call pathogen#infect()

syntax on               " Turns syntax highlighting on
colorscheme default     " Defines the color scheme of the syntax highlighting


filetype on
set nocompatible        " (cp) Use Vim defaults
set ruler               " (ru) Show the cursor position at all times
set showcmd             " (sc) Display an incomplete command in the lower right
set history=50          " (hi) Keep 50 lines of command history
set showmatch           " (sm) Briefly jump to matching bracket when inserting one

set autoindent          " (ai) Turn on auto-indenting
set copyindent          " (ci) When auto-indenting, use the indenting format of the previous line

set tabstop=2           " (ts) Width in spaces that a tab is displayed as
set shiftwidth=2        " (sw) Width in spaces used in each step of autoindent
set softtabstop=2       " (sts) Makes spaces feel like tabs
set textwidth=80        " (tw) Number of columns before an automatic line break is inserted
set expandtab
set smarttab

set formatoptions=croq  " (fo) Influences how Vim automatically formats text
set backspace=indent,eol,start " (bs) Allows backspacing beyond starting point of insert mode, indents, and line breaks

set nrformats+=alpha    " (hf) Adds alpha characters to list that gets decremented/incremented with ^A/^X
set listchars+=tab:>-   " (lcs) Strings used in 'list' mode to show hidden characters
set listchars+=trail:-

set linebreak           " (lbr) Wrap long lines at a space instead of in the middle of a word

set wrapscan            " (ws) Allows search to wrap top top of document when the bottom has been hit
set incsearch           " (is) Highlights what you are searching for when you type
set hlsearch            " (hls) Highlights all instances of the last searched string
set ignorecase          " (ic) Ignores case in search patterns
set smartcase           " (scs) Don't ignore case when the search pattern has uppercase
set infercase           " (inf) During keyword completion, fix case of new word
set wrap

au FileType python setlocal tabstop=4
au FileType python setlocal shiftwidth=4
au FileType python setlocal softtabstop=4

let mapleader = ','
let g:tagbar_usearrows = 1
nnoremap ,m :w <BAR> !lessc % > %:t:r.css<CR><space>
nnoremap <leader>l :TagbarToggle<CR>
noremap <leader>o <Esc>:CommandT<CR>
noremap <leader>O <Esc>:CommandTFlush<CR>
noremap <leader>m <Esc>:CommandTBuffer<CR>
