syntax enable
set background=dark
set number

" Solarized options
let g:solarized_visibility="high"
let g:solarized_contrast="high"

" try to change colorscheme to solarized, but don't spew out error if it doesn't exist
:silent! colorscheme solarized

" Turn off vi compatibility
set nocompatible


" Use spaces for tabs, and enable smart indent
set smartindent
set autoindent

set tabstop=4
set shiftwidth=4
set expandtab

" Load indent file for the current filetype
filetype indent on

" Set iTerm scroller with mouse
set mouse=a

" highlight all search results
set hlsearch

autocmd FileType ruby set tabstop=2|set shiftwidth=2|set textwidth=80

" Highlight any trailing whitespace with a red background, so as not to anger git
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
