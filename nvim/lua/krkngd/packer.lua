-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
    }

    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            vim.cmd("colorscheme catppuccin")
        end
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use('theprimeagen/harpoon')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    -- bufferline
    use {
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    }

    use('christoomey/vim-tmux-navigator')

    use('windwp/nvim-ts-autotag')

    -- nvim-dap (Debug Adapter Protocol)
    -- Need to install debug adapter per language
    -- :help dap.txt
    use('mfussenegger/nvim-dap')
    -- dap ui
    use {'rcarriga/nvim-dap-ui', requires = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
        }
    }

    use({
        "epwalsh/obsidian.nvim",
        tag = "*",  -- recommended, use latest release instead of latest commit
        requires = {
            -- Required.
            "nvim-lua/plenary.nvim",

            -- see below for full list of optional dependencies 👇
        },
        config = function()
            require("obsidian").setup({
                workspaces = {
                    {
                        name = "Personal",
                        path = "~/Documents/Github/obsidian_md_notes",
                    },
                },

                -- see below for full list of options 👇
            })
        end,
    })
end)
