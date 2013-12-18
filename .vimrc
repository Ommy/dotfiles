syntax on
set background=dark
:silent! colorscheme solarized            " try to change colorscheme to solarized, but don't spew out error if it doesn't exist
set number

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
