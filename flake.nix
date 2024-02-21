{
  description = "Flake for totp-cli";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: {

    packages.x86_64-linux.default =

      with import nixpkgs { system = "x86_64-linux"; };
      buildGoModule rec {
        name = "totp-cli";
        src = self;
        vendorHash = "sha256-VTlSnw3TyVOQPU+nMDhRtyUrBID2zesGeG2CgDyjwWY=";
      };
  };
}
