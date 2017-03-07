execute pathogen#infect()

let g:go_fmt_command = "goimports"
set showmode
set autoread
" ================ Turn Off Swap Files ==============
"
set noswapfile
set nobackup
set nowb
set tags=./tags
nnoremap <leader>a <C-a>
nnoremap <leader>x <C-x>

inoremap jk <esc>:w<cr>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>d :cclose<cr>
nnoremap <leader>s :setlocal spell spelllang=en_gb<cr>
nnoremap <leader>so :setlocal spell!<cr>
nnoremap <leader>sp :set paste!<cr>
nnoremap <leader>se :Ag <C-r><C-w><cr>
nnoremap <leader>qq ysiw'
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gp :Git push<cr>
au FileType go nmap <leader>gd <Plug>(go-doc)


set wrap linebreak nolist
set nocompatible
set smartindent
set autoindent
set tabstop=2
set softtabstop=2
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
noremap <leader>e :Explore<CR>
noremap <leader>f mpgg=G`p:w<cr>zz
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
function! TrimWhiteSpace()
  %s/\s\+$//e
endfunction
autocmd BufWritePre *.rb,*.js,*.rake :call TrimWhiteSpace()
autocmd BufWinEnter *.rb,*.js,*.rake let w:m1=matchadd('Search', '\%<100v.\%>95v', -1)

set tags=./tags;~/git

autocmd FileType gitcommit set tw=72

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %"

syntax enable

let g:easytags_auto_highlight = 0
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1
let g:gist_post_private = 1

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>m :make<CR>
 set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
"autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme spring-night

" This is to allow vim to copy and paste between tmux
set clipboard=unnamed

set laststatus=2
set statusline=\ %f%m%r%h%w\ %{fugitive#statusline()}\ %=%([%l]\ %)
