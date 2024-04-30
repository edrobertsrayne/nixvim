{
  description = "My custom Neovim flake based on Nixvim";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    nixvim,
    flake-utils,
    ...
  } @ inputs: let
    config = import ./config;
  in
    flake-utils.lib.eachDefaultSystem (system: let
      nixvimLib = nixvim.lib.${system};
      pkgs = import nixpkgs {inherit system;};
      nixvim' = nixvim.legacyPackages.${system};
      nvim = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = config;
        extraSpecialArgs = {
          inherit self;
        };
      };
    in {
      checks = {
        # `nix flake check .` verifies system config
        default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "Nixvim";
        };
      };
      packages = {
        # start nixvim with `nix run .`
        default = nvim;
      };

      formatter = pkgs.alejandra;
    });
}
