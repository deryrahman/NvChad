local present, ts_config = pcall(require, "nvim-treesitter.configs")

if not present then
   return
end

-- -- neoorg setup
-- -- ref https://github.com/nvim-neorg/neorg
-- local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
--
-- parser_configs.norg = {
--    install_info = {
--       url = "https://github.com/nvim-neorg/tree-sitter-norg",
--       files = { "src/parser.c", "src/scanner.cc" },
--       branch = "main",
--    },
-- }
--
-- parser_configs.norg_meta = {
--    install_info = {
--       url = "https://github.com/nvim-neorg/tree-sitter-norg-meta",
--       files = { "src/parser.c" },
--       branch = "main",
--    },
-- }
--
-- parser_configs.norg_table = {
--    install_info = {
--       url = "https://github.com/nvim-neorg/tree-sitter-norg-table",
--       files = { "src/parser.c" },
--       branch = "main",
--    },
-- }

ts_config.setup {
   ensure_installed = {
      "lua",
      "vim",
   },
   highlight = {
      enable = true,
      use_languagetree = true,
   },
}
