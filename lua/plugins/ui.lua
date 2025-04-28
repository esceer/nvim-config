return {
  -- messages, cmdline and the popupmenu
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.presets.lsp_doc_border = true
    end,
  },

  -- notifications
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 5000,
    },
  },

  -- bufferline
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    keys = {
      { "<Tab>", "<Cmd>BufferLineCycleNext<CR>", desc = "Next tab" },
      { "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Prev tab" },
    },
  },

  -- dashboard
  {
    "snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          pick = function(cmd, opts)
            return LazyVim.pick(cmd, opts)()
          end,
          header = [[
 ███╗    ██╗                        ██╗    ██╗  ██╗  ███╗     ███╗
 ████╗   ██║   ██████╗    ██████╗   ██╗    ██╗  ██║  ████╗   ████║
 ██╔██╗  ██║  ██╔═══██╗  ██╔═══██╗  ██║    ██║  ██║  ██╔██╗ ██╔██║
 ██║╚██╗ ██║  ████████║  ██║   ██║  ██║    ██║  ██║  ██║ ████╔╝██║
 ██║ ╚██╗██║  ██╔═════╝  ██║   ██║  ╚██╗  ██╔╝  ██║  ██║ ╚██╔╝ ██║
 ██║  ╚████║   ███████╗  ╚██████╔╝   ╚█████╔╝   ██║  ██║  ╚═╝  ██║
 ╚═╝   ╚═══╝   ╚══════╝   ╚═════╝     ╚════╝    ╚═╝  ╚═╝       ╚═╝
 ]],
          -- stylua: ignore
          ---@type snacks.dashboard.Item[]
          keys = {
            { icon = "󰍉", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
            { icon = "", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
            { icon = "", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
            { icon = "", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})" },
            { icon = "", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
            { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
            { icon = "", key = "q", desc = "Quit", action = ":qa" },
          },
        },
      },
    },
  },
}
