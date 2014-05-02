syntax on
set background=dark
set number

" Solarized options
let g:solarized_visibility="high"
let g:solarized_contrast="high"

" try to change colorscheme to solarized, but don't spew out error if it doesn't exist
:silent! colorscheme solarized


" Use spaces for tabs, and enable smart indent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

" highlight all search results
set hlsearch

" Highlight any trailing whitespace with a red background, so as not to anger git
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
