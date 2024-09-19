source ~/shared.vim

nnoremap <PageUp> <PageUp>zz
inoremap <PageUp> <PageUp><C-o>zz
nnoremap <PageDown> <PageDown>zz
inoremap <PageDown> <PageDown><C-o>zz

augroup YankHighlight
	autocmd!
	autocmd TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=500}
augroup end

