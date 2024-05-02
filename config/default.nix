{
  imports = [
    ./bufferlines/bufferline.nix
    ./completion/cmp.nix
    ./filetrees/neo-tree.nix
    ./git/lazygit.nix
    ./git/gitsigns.nix
    ./lsp
    ./snippets/luasnip.nix
    ./statuslines/lualine.nix
    ./telescope
    ./treesitter
    ./ui/noice.nix
    ./utils/oil.nix
    ./utils/nix.nix
    ./utils/mini.nix
    ./utils/flash.nix
    ./utils/notify.nix
    ./utils/which-key.nix
    ./utils/illuminate.nix
    ./utils/persistence.nix
    ./utils/todo-comments.nix
    ./utils/tmux-navigator.nix
    ./utils/indent-blankline.nix
  ];

  colorschemes.catppuccin.enable = true;

  globals.mapleader = " ";
  plugins = {
    #nvim-autopairs.enable = true;
    #indent-blankline.enable = true;
    # lsp-lines.enable = true;

    /*
       TODO: Fix error on aarch64 machines
    alpha = {
      enable = true;
      theme = "startify";
    };
    */
  };
}
