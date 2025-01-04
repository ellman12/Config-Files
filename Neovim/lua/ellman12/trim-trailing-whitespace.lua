--Taken from https://github.com/ThePrimeagen/init.lua/blob/d92308a63554db8bf8d75de5d41403cc2ddd692a/lua/theprimeagen/init.lua#L43
--and used this to fix it https://vi.stackexchange.com/a/37427

vim.api.nvim_create_autocmd({"BufWritePre"}, {
	pattern = { "*" },
	command = [[%s/\s\+$//e]],
})

