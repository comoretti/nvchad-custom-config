local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

    -- Override plugin definition options

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            -- format & linting
            {
                "jose-elias-alvarez/null-ls.nvim",
                config = function()
                    require "custom.configs.null-ls"
                end,
            },
        },
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.configs.lspconfig"
        end, -- Override to setup mason-lspconfig
    },

    -- override plugin configs
    {
        "williamboman/mason.nvim",
        opts = overrides.mason
    },

    {
        "nvim-treesitter/nvim-treesitter",
        opts = overrides.treesitter,
    },

    {
        "nvim-tree/nvim-tree.lua",
        opts = overrides.nvimtree,
    },

    {
        "NvChad/nvterm",
        opts = overrides.nvterm,
    },

    {
        "lukas-reineke/indent-blankline.nvim",
        opts = overrides.blankline,
    },
    {
        "lewis6991/gitsigns.nvim",
        opts = overrides.gitsigns,
    },

    -- Install a plugin
    -- {
    --   "max397574/better-escape.nvim",
    --   event = "InsertEnter",
    --   config = function()
    --     require("better_escape").setup()
    --   end,
    -- },

    {
        "skywind3000/asyncrun.vim",
        lazy = false,
    },

    {
        "eshion/vim-sync",
        lazy = false,
    },

    {
        "wakatime/vim-wakatime",
        lazy = false,
    },

    {
        "RRethy/vim-illuminate",
        lazy = false,
    },

    {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        lazy = false,
    },

    {
        "rmagatti/auto-session",
        config = function()
            require "custom.configs.auto-session"
        end,
        lazy = false,
    },

    {
        "ojroques/nvim-osc52",
        config = function()
            require "custom.configs.nvim-osc52"
        end,
        lazy = false,
    },

    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require "custom.configs.copilot"
        end,
    },

    {
        "gbprod/yanky.nvim",
        config = function()
            require "custom.configs.yanky"
        end,
        lazy = false,
    }

    -- To make a plugin not be loaded
    -- {
    --   "NvChad/nvim-colorizer.lua",
    --   enabled = false
    -- },

    -- All NvChad plugins are lazy-loaded by default
    -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
    -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
    -- {
    --   "mg979/vim-visual-multi",
    --   lazy = false,
    -- }
}

return plugins
