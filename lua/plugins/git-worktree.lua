return {
    {
        "polarmutex/git-worktree.nvim",
        version = "^2",
        dependencies = { "nvim-lua/plenary.nvim" },
        enabled = true,
        config = function()
            vim.keymap.set("n", "<leader>gt", function()
                require("telescope").extensions.git_worktree.git_worktree()
            end, { desc = "git worktrees" })

            vim.keymap.set("n", "<leader>gT", function()
                require("telescope").extensions.git_worktree.create_git_worktree()
            end, { desc = "Create git worktree" })
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        config = function()
            require("telescope").load_extension("git_worktree")
        end,
    },
}
