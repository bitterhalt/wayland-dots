return {
    -- Markdown-preview
    {
        "iamcco/markdown-preview.nvim",
        config = function()
            vim.fn["mkdp#util#install"]()
        end,
        ft = "markdown",
        keys = {
            { '<C-p>', "<CMD>MarkdownPreviewToggle<CR>", desc = "Toggle Markdown Preview" },
        },
    },
    {
        "OXY2DEV/markview.nvim",
        ft = "markdown",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        },
        keys = {
            { "<leader>mt", "<cmd>Markview<CR>", desc = "Toggle markview" },
        }
    },
    -- Obsidian-nvim
    {
        "epwalsh/obsidian.nvim",
        version = "*",
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        opts = {
            workspaces = {
                {
                    name = "personal",
                    path = "~/Documents/personal/notes/",
                },
            },
            ui = {
                enable = false
            },
            daily_notes = {
                folder = "daily_note",
                date_format = "%d-%m-%Y",
                alias_format = "%B %-d, %Y",
                default_tags = { "daily-notes" },
                template = nil
            },
            templates = {
                folder = "templates",
                date_format = "%a-%d-%m-%Y",
                time_format = "%H:%M",
            },
            follow_url_func = function(url)
                vim.fn.jobstart({ "xdg-open", url })
            end,
        },
        keys = {
            { "<leader>os",  "<cmd>ObsidianSearch<CR>",      desc = "Open obsidian search menu" },
            { "<leader>os",  "<cmd>ObsidianSearch<CR>",      desc = "Open obsidian search menu" },
            { "<leader>of",  "<cmd>ObsidianLinks<CR>",       desc = "Open obsidian links menu" },
            { "<leader>oq",  "<cmd>ObsidianQuickSwitch<CR>", desc = "Open Obsidian Quick Switch menu" },
            { "<leader>ot",  "<cmd>ObsidianTags<CR>",        desc = "Open obsidian tag finder" },
            { "<leader>obl", "<Cmd>ObsidianBacklinks<CR>",   desc = "Open backlinks menu for current note" },
            { "<leader>obr", "<Cmd>ObsidianRename<CR>",      desc = "Rename Note" },
        },
    },
}