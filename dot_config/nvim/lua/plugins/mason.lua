return { {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v2.x",
    dependencies = {
        -- LSP Support
        { "neovim/nvim-lspconfig" }, -- Required
        {                            -- Optional
            "williamboman/mason.nvim",
            build = function()
                pcall(vim.cmd, "MasonUpdate")
            end,
        },
        { "williamboman/mason-lspconfig.nvim" }, -- Optional

        -- Autocompletion
        { "hrsh7th/nvim-cmp" },     -- Required
        { "hrsh7th/cmp-nvim-lsp" }, -- Required
        { "L3MON4D3/LuaSnip" },     -- Required
        { "rafamadriz/friendly-snippets" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "hrsh7th/cmp-cmdline" },
        { "saadparwaiz1/cmp_luasnip" },
    },
},
    {
        "stevearc/conform.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    lua = { "stylua" },
                    cpp = { "clang-format" }
                },
            })
            local conform = require("conform")
            vim.keymap.set({ "n", "v" }, "<leader>l", function()
                conform.format({
                    lsp_fallback = true,
                    async = false,
                    timeout_ms = 500,
                })
            end, { desc = "Format file or range (in visual mode)" })
        end,
    }
}
