execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme evening

set tabstop=2 shiftwidth=2 expandtab
set t_ut=

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
  augroup WSLYank
    autocmd!
    autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
  augroup END
endif

let g:vim_markdown_folding_disabled = 1
