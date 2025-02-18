{
  # https://wiki.nixos.org/wiki/NixOS_Wiki
  description = "my brain";

  inputs = {
    home-manager = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:nix-community/home-manager";
    };
    nixpkgs = {
      url = "github:NixOS/nixpkgs/nixos-unstable";
      # url = "github:NixOS/nixpkgs?rev=d2faa1bbca1b1e4962ce7373c5b0879e5b12cef2";
    };
    nixvim = {
      inputs.nixpkgs.follows = "nixpkgs";
      url = "github:pta2002/nixvim";
    };
    stylix = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # stylix.url = "github:danth/stylix?rev=b00c9f46ae6c27074d24d2db390f0ac5ebcc329f";
    textfox = {
      url = "github:shadeyg56/textfox";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    home-manager,
    nixvim,
    stylix,
    ...
  } @ inputs: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = {
        inherit inputs;
      };
      modules = [
        stylix.nixosModules.stylix
        ./config.nix
        ./fonts.nix
        ./hardware-configuration.nix
        ./keyd.nix
        ./sound.nix
        ./ssh.nix
        ./steam.nix
        ./sts
        ./time.nix
        ./users.nix

        home-manager.nixosModules.home-manager
        {
          home-manager = {
            extraSpecialArgs = {
              inherit inputs;
            };
            users.deeengan = {
              imports = [
                nixvim.homeManagerModules.nixvim
                ./home.nix
              ];
            };
            useGlobalPkgs = true;
            useUserPackages = true;
          };
        }
      ];
    };
  };
}
