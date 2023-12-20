return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require('lualine').setup({
            options = {
                theme = 'nord'
            }
        })
        vim.opt.showmode = false
    end
}
