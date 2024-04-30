{
  imports = [
    ./cmp.nix
    ./keymaps.nix
    ./lsp.nix
    ./noice.nix
    ./none-ls.nix
    ./oil.nix
    ./opts.nix
    ./telescope.nix
    ./treesitter.nix
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
    nvim-autopairs.enable = true;
    #indent-blankline.enable = true;
    neo-tree = {enable = true;};
    trouble = {enable = true;};
    # lsp-lines.enable = true;

    alpha = {
      enable = true;
      theme = "startify";
    };
  };
}
