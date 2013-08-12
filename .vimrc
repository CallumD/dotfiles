highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.\+/
execute pathogen#infect()
syntax on
set nocompatible
set smartindent
set autoindent
set number
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
filetype indent on
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre     *.rb :call TrimWhiteSpace()
autocmd BufWritePre     *.js :call TrimWhiteSpace()
