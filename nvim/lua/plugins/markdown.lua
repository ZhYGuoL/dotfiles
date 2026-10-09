-- Better Markdown editing + rendering inside Neovim.
return {
  -- 1) Enable LazyVim's built-in Markdown extra (render-markdown.nvim + extras)
  { import = "lazyvim.plugins.extras.lang.markdown" },

  -- 2) Zen mode for distraction-free writing (toggle with <leader>z)
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = {
      { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode (focus writing)" },
    },
    opts = {
      window = {
        width = 90,
        options = {
          number = false,
          relativenumber = false,
          signcolumn = "no",
        },
      },
    },
  },

  -- 3) Live preview in browser (toggle with <leader>mp)
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview" },
    keys = {
      { "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", desc = "Markdown Preview (browser)" },
    },
    build = "cd app && npx --yes yarn install",
    ft = { "markdown" },
    init = function()
      -- Keep a preview tab open when leaving its buffer, so several
      -- files can stay previewed at once.
      vim.g.mkdp_auto_close = 0
    end,
  },
}
