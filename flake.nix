{
  description = "Flake for totp-cli";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    defaultPackage.x86_64-linux =

      with import nixpkgs { system = "x86_64-linux"; };
      buildGoModule rec {
        name = "totp-cli";
        src = ./.;
        vendorHash = "sha256-VTlSnw3TyVOQPU+nMDhRtyUrBID2zesGeG2CgDyjwWY=";
      };
  };
}
