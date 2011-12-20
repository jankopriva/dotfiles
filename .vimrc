"set guifont=Terminus:h16
set guifont=Menlo:h11
set antialias

syntax on
set background=light
colorscheme solarized

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

set number
set ruler
set hidden

set autoindent
set smartindent

filetype plugin on
set ofu=syntaxcomplete#Complete

set wildmode=list:longest

set nofoldenable

nmap <leader>ff :FufFile **/<CR>
nmap <leader>fb :FufBuffer<CR>

set laststatus=2
set statusline=%{GitBranch()}%=%f:\ %l,%c

set incsearch

" dot returns cursor back after command is repeated
nmap . .`[

nmap ,client :cd ~/Sites/bear/client<cr>
nmap ,ev :tabedit ~/.vimrc<cr>
nmap ,et :tabedit ~/notes/todo.otl<cr>
nmap ,eh :tabedit ~/notes/howto.otl<cr>
nmap <space> :

if has("autocmd")
	autocmd bufwritepost .vimrc source $MYVIMRC
endif

imap ,e <esc>
nmap ,nt :NERDTreeToggle<cr>

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <silent> <leader>s :call <SID>StripTrailingWhitespaces()<cr>
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

filetype plugin indent on

" Open new file in the same directory as currently edited buffer
nnoremap <Leader>e :e <C-R>=expand('%:p:h') . '/'<CR>

" Clone buffer to the same directory under different name
nnoremap <Leader>w :w <C-R>=expand('%:p:h') . '/'<CR>

vmap <silent> <Leader>gt :call Quote("_(", ")")<CR>

function! Quote(quote_s, quote_e)
  let save = @"
  silent normal gvy
  let @" = a:quote_s . @" . a:quote_e
  silent normal gvp
  let @" = save
endfunction
