return {
    {
        "isakbm/gitgraph.nvim",
        dependencies = { "sindrets/diffview.nvim" },
        -- ---@type I.GGConfig
        opts = {
            symbols = {
                merge_commit = "m",
                merge_commit_end = "M",
                commit = "o",
                commit_end = "O",

                -- -- Advanced symbols
                -- GVER = "",
                -- GHOR = "",
                -- GCLD = "",
                -- GCRD = "╭",
                -- GCLU = "",
                -- GCRU = "",
                -- GLRU = "",
                -- GLRD = "",
                -- GLUD = "",
                -- GRUD = "",
                -- GFORKU = "",
                -- GFORKD = "",
                -- GRUDCD = "",
                -- GRUDCU = "",
                -- GLUDCD = "",
                -- GLUDCU = "",
                -- GLRDCL = "",
                -- GLRDCR = "",
                -- GLRUCL = "",
                -- GLRUCR = "",
            },
            format = {
                timestamp = "%d %b %Y %H:%M",
                fields = { "branch_name", "tag", "timestamp", "author", "hash" },
            },
            hooks = {
                -- Check diff of a commit
                on_select_commit = function(commit)
                    vim.notify("DiffviewOpen " .. commit.hash .. "^!")
                    vim.cmd(":DiffviewOpen " .. commit.hash .. "^!")
                end,
                -- Check diff from commit a -> commit b
                on_select_range_commit = function(from, to)
                    vim.notify("DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
                    vim.cmd(":DiffviewOpen " .. from.hash .. "~1.." .. to.hash)
                end,
            },
        },
        keys = {
            {
                "<leader>gZ",
                function()
                    require("gitgraph").draw({}, { all = true, max_count = 5000 })
                end,
                desc = "GitGraph - Draw",
            },
        },
    },
}
