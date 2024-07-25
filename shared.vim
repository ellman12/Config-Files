"EasyMotion
nnoremap <SPACE> <Nop>
let mapleader=" "
map <Leader> <Plug>(easymotion-prefix)

set laststatus=0

set matchpairs=(:),{:},[:],<:>,`:`,':',":"

" Make Home go to first non-blank character.
nnoremap <Home> ^
inoremap <Home> <C-o>^

" Redo with U in addition to Ctrl R.
nnoremap U <C-r>

" Send x, X, and s to the black hole register.
nnoremap x "_x
nnoremap X "_X
nnoremap s "_s

vnoremap x "_x
vnoremap X "_X
vnoremap s "_s

