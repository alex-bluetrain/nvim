return {
    "nvzone/showkeys",
    cmd = "ShowkeysToggle",
    keys = {
        { "<leader>uk", mode = "n", "<cmd>ShowkeysToggle<cr>", desc = "keystrokes (toggle)" },
    },
    opts = {
        timeout = 3,
        maxkeys = 5,
        show_count = true,
        -- {"i"}
        exclude_modes = {},

        -- bottom-left, bottom-right, bottom-center, top-left, top-right, top-center
        position = "bottom-center",
        keyformat = {},
    },
}
