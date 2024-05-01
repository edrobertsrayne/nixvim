{
  imports = [
    ./cmp.nix
    ./keymaps.nix
    ./harpoon.nix
    ./lsp.nix
    ./noice.nix
    ./none-ls.nix
    ./oil.nix
    ./opts.nix
    ./telescope.nix
    ./treesitter.nix
    ./trouble.nix
    ./which-key.nix
  ];

  colorschemes.catppuccin.enable = true;

  globals.mapleader = " ";
  plugins = {
    bufferline.enable = true;
    lualine.enable = true;
    tmux-navigator.enable = true;
    nix.enable = true;
    nvim-colorizer.enable = true;
    #nvim-autopairs.enable = true;
    #indent-blankline.enable = true;
    neo-tree = {enable = true;};
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
