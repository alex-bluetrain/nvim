return {
  "rest-nvim/rest.nvim",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      table.insert(opts.ensure_installed, "http")
    end,
  },
  config = function()
    -- local rest_nvim = require("rest-nvim")
    vim.keymap.set("n", "<leader>rr", ":Rest run<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>rp", ":Rest preview<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>ro", ":Rest open<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>rl", ":Rest logs<CR>", { noremap = true, silent = true })
  end,
}
