--Adapted from https://github.com/ThePrimeagen/init.lua/blob/master/lua/theprimeagen/lazy/telescope.lua
--and https://youtu.be/iqdCshrIKIg
--and https://github.com/nvim-telescope/telescope.nvim#pickers

return {
    "nvim-telescope/telescope.nvim",

	branch = "0.1.x",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require("telescope").setup({})
        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>fd", builtin.find_files, {})

        vim.keymap.set("n", "Q", builtin.git_files, {})
        vim.keymap.set("n", "<leader>gf", builtin.git_files, {})

        vim.keymap.set("n", "<leader>of", builtin.oldfiles, {})

        vim.keymap.set("n", "<leader>gs", builtin.live_grep, {})
    end
}
