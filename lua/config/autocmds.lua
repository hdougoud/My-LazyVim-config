-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Modification de la tabluation pour le C/C++
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function()
    vim.opt_local.shiftwidth = 4 -- L'indentation fera 4 espaces de large visuellement
    vim.opt_local.tabstop = 4 -- Une tabulation fera 4 espaces de large visuellement
    vim.opt_local.expandtab = false -- Le changement est ICI : Neovim garde la VRAIE tabulation
  end,
})
