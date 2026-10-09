return {
    "lewis6991/gitsigns.nvim",

    event = { "BufReadPre", "BufNewFile" },
    opts = {
        signs = {
            add          = { text = '┃' },
            change       = { text = '┃' },
            delete       = { text = '_' },
            topdelete    = { text = '‾' },
            changedelete = { text = '~' },
            untracked    = { text = '┆' },
        },
        signs_staged = {
            add          = { text = '┃' },
            change       = { text = '┃' },
            delete       = { text = '_' },
            topdelete    = { text = '‾' },
            changedelete = { text = '~' },
            untracked    = { text = '┆' },
        },

    },
    config = function(_, opts)
        require("gitsigns").setup(opts)

        local function set_colors()
            local hl = vim.api.nvim_set_hl
            local add, change, delete = "#98c379", "#61afef", "#e06c75"

            -- unstaged
            hl(0, "GitSignsAdd",          { fg = add })
            hl(0, "GitSignsChange",       { fg = change })
            hl(0, "GitSignsDelete",       { fg = delete })

            hl(0, "GitSignsTopdelete",    { fg = delete })
            hl(0, "GitSignsChangedelete", { fg = change })
            hl(0, "GitSignsUntracked",    { fg = add })

            -- staged: dimmer
            hl(0, "GitSignsStagedAdd",          { fg = "#5c7a47" })
            hl(0, "GitSignsStagedChange",       { fg = "#3d6d96" })
            hl(0, "GitSignsStagedDelete",       { fg = "#8c4a50" })
            hl(0, "GitSignsStagedTopdelete",    { fg = "#8c4a50" })
            hl(0, "GitSignsStagedChangedelete", { fg = "#3d6d96" })
            hl(0, "GitSignsStagedUntracked",    { fg = "#5c7a47" })
        end

        set_colors()

        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = set_colors,
        })
    end,
}
