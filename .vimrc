set number

colorscheme my

set cursorcolumn

nnoremap d "_d
vnoremap d "_d

nnoremap x "_x
vnoremap x "_x


function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! Diffsaved call s:DiffWithSaved()
