{
  imports = [
    ./keymaps.nix

    ./bufferlines/bufferline.nix
    ./completion/cmp.nix
    ./filetrees/neo-tree.nix
    ./git/lazygit.nix
    ./git/gitsigns.nix
    ./lsp
    ./none-ls
    ./snippets/luasnip.nix
    ./statuslines/lualine.nix
    ./telescope
    ./treesitter
    ./ui/nui.nix
    ./ui/noice.nix
    #    ./ui/alpha.nix
    ./ui/mini-starter.nix
    ./utils/oil.nix
    ./utils/nix.nix
    ./utils/mini.nix
    ./utils/flash.nix
    ./utils/notify.nix
    #./utils/texpresso.nix
    ./utils/which-key.nix
    ./utils/illuminate.nix
    ./utils/persistence.nix
    ./utils/todo-comments.nix
    ./utils/tmux-navigator.nix
    ./utils/indent-blankline.nix
  ];

  colorschemes.catppuccin.enable = true;
  enableMan = false;
  globals.mapleader = " ";
}
