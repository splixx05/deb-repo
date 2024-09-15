return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      local builtin = require("telescope.builtin")

    -- set keymaps
      local keymap = vim.keymap -- for conciseness
      keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
      keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
      keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
      end,

      {
        "nvim-telescope/telescope-ui-select.nvim",
      config = function()
  require("telescope").setup ({
    extensions = {
      ["ui-select"] = {
        require("telescope.themes").get_dropdown {
        }
      }
    }
  })
  require("telescope").load_extension("ui-select")
    end
    },
  }
