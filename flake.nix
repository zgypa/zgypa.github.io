{
  description = "Toni Magni landing page";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  };

  outputs =
    { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          ruby_3_3
          bundler
        ];

        shellHook = ''
          bundle config set --local path "./.gems"
          bundle install
        '';
      };
    };
}
