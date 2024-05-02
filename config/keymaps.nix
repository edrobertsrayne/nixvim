{
  keymaps = [
    # Files

    {
      key = "<leader>fn";
      action = "<cmd>enew<cr>";
      options.desc = "New file";
    }

    # Buffer navigation

    {
      key = "<leader>`";
      action = "<cmd>e #<cr>";
      options.desc = "Switch to other buffer";
    }
    {
      key = "<leader>bb";
      action = "<cmd>e #<cr>";
      options.desc = "Switch to other buffer";
    }
    {
      key = "<leader>[b";
      action = "<cmd>bprevious<cr>";
      options.desc = "Switch to previous buffer";
    }
    {
      key = "<leader>bp";
      action = "<cmd>bprevious<cr>";
      options.desc = "Switch to previous buffer";
    }
    {
      key = "<leader>bn";
      action = "<cmd>bnext<cr>";
      options.desc = "Switch to next buffer";
    }
    {
      key = "<leader>]b";
      action = "<cmd>bnext<cr>";
      options.desc = "Switch to next buffer";
    }

    # Indenting

    {
      key = "<";
      action = "<gv";
      mode = "v";
    }
    {
      key = ">";
      action = ">gv";
      mode = "v";
    }

    # Terminal

    {
      key = "<esc><esc>";
      action = "<c-\\><c-n>";
      options.desc = "Enter normal mode";
      mode = "t";
    }
  ];
}
