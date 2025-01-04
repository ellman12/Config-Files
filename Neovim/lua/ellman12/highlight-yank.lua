--Adapted from https://github.com/ThePrimeagen/init.lua/blob/d92308a63554db8bf8d75de5d41403cc2ddd692a/lua/theprimeagen/init.lua#L32

vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('HighlightYank', {}),
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 250,
        })
    end,
})


