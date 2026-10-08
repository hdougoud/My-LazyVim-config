return {
  -- Coloration syntaxique
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { ensure_installed = { "prisma" } },
  },

  -- LSP Prisma --
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        prismals = {},
      },
    },
  },
}
