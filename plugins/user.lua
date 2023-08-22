return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
   "nvim-treesitter/nvim-treesitter-context",
    event = "VeryLazy",
    config = function()
        require('treesitter-context').setup({
          enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
          max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
          min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
          line_numbers = true,
          multiline_threshold = 20, -- Maximum number of lines to collapse for a single context line
          trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
          mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
          -- Separator between context and content. Should be a single character string, like '-'.
          -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
          separator = nil,
          zindex = 20, -- The Z-index of the context window
          on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
    })
    end
  },
  {
     "kylechui/nvim-surround",
     version = "*", -- Use for stability; omit to use `main` branch for the latest features
     event = "VeryLazy",
     config = function()
         require("nvim-surround").setup({
             -- Configuration here, or leave empty to use defaults
         })
     end
  },
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {} -- this is equalent to setup({}) function
  },
  {
    "Shatur/neovim-ayu",
    event = "VeryLazy",
    config = function()
        require('ayu').setup({
        mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
        overrides = {
            Normal = { bg = "None" },
            ColorColumn = { bg = "None" },
            SignColumn = { bg = "None" },
            Folded = { bg = "None" },
            FoldColumn = { bg = "None" },
            CursorLine = { bg = "None" },
            CursorColumn = { bg = "None" },
            WhichKeyFloat = { bg = "None" },
            VertSplit = { bg = "None" },
        } -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
      })
    end
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {},
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump({
        search = {
          mode = function(str)
            return "\\<" .. str
          end,
        },
      }) end, desc = "Flash" },
      { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
      { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
      { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
    },
  },
  {
   "christoomey/vim-tmux-navigator" 
  },
  {
    "folke/neodev.nvim",
    event = "VeryLazy",
    opts = {}
  }
}
