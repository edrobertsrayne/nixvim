{
  plugins.telescope = {
    enable = true;
    extensions = {
      /*
      file_browser = {
        enable = true;
      };
      */
      fzf-native = {
        enable = true;
      };
      ui-select = {
        enable = true;
      };
    };
    settings.defaults = {
      layout_config = {
        horizontal = {
          prompt_position = "bottom";
        };
      };
      sorting_strategy = "ascending";
    };
    keymaps = {
      "<leader><space>" = {
        action = "find_files, {}";
        options.desc = "Find project files";
      };
      "<leader>/" = {
        action = "live_grep";
        options.desc = "Live grep";
      };
      "<leader>:" = {
        action = "command_history, {}";
        options.desc = "Command History";
      };
      "<leader>ff" = {
        action = "find_files, {}";
        options.desc = "Find project files";
      };
      "<leader>fR" = {
        action = "resume, {}";
        options.desc = "Resume";
      };
      "<leader>fg" = {
        action = "git_files, {}";
        options.desc = "Recent";
      };
      "<leader>fr" = {
        action = "oldfiles, {}";
        options.desc = "Recent";
      };
      "<leader>fb" = {
        action = "buffers, {}";
        options.desc = "Buffers";
      };
      "<leader>gc" = {
        action = "git_commits, {}";
        options.desc = "Commits";
      };
      "<leader>gs" = {
        action = "git_status, {}";
        options.desc = "Status";
      };
      "<leader>sa" = {
        action = "autocommands, {}";
        options.desc = "Auto Commands";
      };
      "<leader>sb" = {
        action = "current_buffer_fuzzy_find, {}";
        options.desc = "Buffer";
      };
      "<leader>sc" = {
        action = "command_history, {}";
        options.desc = "Command History";
      };
      "<leader>sC" = {
        action = "commands, {}";
        options.desc = "Commands";
      };
      "<leader>sD" = {
        action = "diagnostics, {}";
        options.desc = "Workspace diagnostics";
      };
      "<leader>sh" = {
        action = "help_tags, {}";
        options.desc = "Help pages";
      };
      "<leader>sH" = {
        action = "highlights, {}";
        options.desc = "Search Highlight Groups";
      };
      "<leader>sk" = {
        action = "keymaps, {}";
        options.desc = "Keymaps";
      };
      "<leader>sM" = {
        action = "man_pages, {}";
        options.desc = "Man pages";
      };
      "<leader>sm" = {
        action = "marks, {}";
        options.desc = "Jump to Mark";
      };
      "<leader>so" = {
        action = "vim_options, {}";
        options.desc = "Options";
      };
      "<leader>sR" = {
        action = "resume, {}";
        options.desc = "Resume";
      };
      "<leader>uC" = {
        action = "colorscheme, {}";
        options.desc = "Colorscheme preview";
      };
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>sd";
      action = "<cmd>Telescope diagnostics bufnr=0<cr>";
      options = {
        desc = "Document diagnostics";
      };
    }
    {
      mode = "n";
      key = "<leader>fe";
      action = "<cmd>Telescope file_browser<cr>";
      options = {
        desc = "File browser";
      };
    }
    {
      mode = "n";
      key = "<leader>fE";
      action = "<cmd>Telescope file_browser path=%:p:h select_buffer=true<cr>";
      options = {
        desc = "File browser";
      };
    }
    {
      mode = "n";
      key = "<leader>st";
      action = "<cmd>TodoTelescope<cr>";
      options = {
        silent = true;
        desc = "Todo (Telescope)";
      };
    }
    {
      mode = "n";
      key = "<leader>fp";
      action = "<cmd>Telescope projects<CR>";
      options = {
        desc = "Projects";
      };
    }
  ];
  extraConfigLua = ''
    require("telescope").setup{
      pickers = {
        colorscheme = {
          enable_preview = true
        }
      }
    }
    require("telescope.themes").get_dropdown{}
  '';
}
