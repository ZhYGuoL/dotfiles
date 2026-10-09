-- Seamless navigation between tmux panes and Neovim splits with Ctrl-h/j/k/l.
-- The matching tmux side is already configured in ~/.tmux.conf.
return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateDown",
    "TmuxNavigateUp",
    "TmuxNavigateRight",
    "TmuxNavigatePrevious",
  },
  keys = {
    { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "Go to left pane/split" },
    { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "Go to below pane/split" },
    { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "Go to above pane/split" },
    { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "Go to right pane/split" },
    { "<C-\\>", "<cmd>TmuxNavigatePrevious<cr>", desc = "Go to previous pane/split" },
  },
}
