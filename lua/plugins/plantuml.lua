return {
  -- syntaxe + détection de filetype (.puml, .uml, .pu, .iuml)
  { "aklt/plantuml-syntax", ft = "plantuml" },

  -- prévisualisation dans le navigateur
  {
    "weirongxu/plantuml-previewer.vim",
    dependencies = { "tyru/open-browser.vim" },
    ft = "plantuml",
    keys = {
      { "<leader>cp", "<cmd>PlantumlOpen<cr>", ft = "plantuml", desc = "PlantUML preview" },
    },
  },

  -- parser treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "puml" })
      end
    end,
  },
}
