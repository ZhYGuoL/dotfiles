-- Rose Pine colorscheme, set to match the Ghostty "Rose Pine Moon" theme.
return {
  -- Install the Rose Pine plugin
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "moon", -- "main" (dark), "moon" (medium-dark), "dawn" (light)
      dark_variant = "moon",
      styles = {
        italic = true,
        transparency = false, -- set true if you want Ghostty's background to show through
      },
    },
  },

  -- Tell LazyVim to use it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
