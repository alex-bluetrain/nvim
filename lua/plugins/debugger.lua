return {}
-- local js_based_languages = {
--     "typescript",
--     "javascript",
--     "typescriptreact",
--     "javascriptreact",
-- }
--
-- return {
--     {
--         "mfussenegger/nvim-dap",
--         config = function()
--             local dap = require("dap")
--
--             local Config = require("lazyvim.config")
--             vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })
--
--             for name, sign in pairs(Config.icons.dap) do
--                 sign = type(sign) == "table" and sign or { sign }
--                 vim.fn.sign_define(
--                     "Dap" .. name,
--                     { text = sign[1], texth1 = sign[2] or "DiagnosticInfo", lineh1 = sign[3], numh1 = sign[3] }
--                 )
--         end,
--     },
-- }
