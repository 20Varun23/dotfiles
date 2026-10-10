return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            -- no-op for parsers that are already installed
            require("nvim-treesitter").install({
                "lua", "vim", "vimdoc", "markdown", "markdown_inline",
                "python", "go", "javascript", "typescript", "tsx",
                "html", "css", "json", "bash",
            })

            -- start treesitter and use it for folds; fall back to indent folds
            vim.api.nvim_create_autocmd("FileType", {
                callback = function(args)
                    if pcall(vim.treesitter.start, args.buf) then
                        vim.wo[0][0].foldmethod = "expr"
                        vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
                    end
                end,
            })
        end,
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            require("lualine").setup({
                sections = {
                    lualine_a = {'mode'},
                    lualine_b = {},
                    lualine_c = {'filename'},
                    lualine_x = {},
                    lualine_y = {
                        "branch",
                        {
                            "diff",
                            diff_color = {
                                added = { fg = "#98c379" },
                                modified = { fg = "#61afef" },
                                removed = { fg = "#e06c75" },
                            },
                        },
                        "diagnostics",
                    },
                    lualine_z = {'location'}
                },

            })
        end,
    },
    {
        'nvim-telescope/telescope.nvim', version = '*',
        dependencies = {
            'nvim-lua/plenary.nvim',

            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    },
    {
        "folke/todo-comments.nvim",

        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
            keywords = {
                TODO = {color = "info"},
                FIX = { color = "error"}
            },
            colors = {
                info = {"#eb8934"},
                error = {"#de462f"}
            }
        }
    },
    {
        'numToStr/Comment.nvim',
        config = function()
            require("Comment").setup()
        end,
    },
}
