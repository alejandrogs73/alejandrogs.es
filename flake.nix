{
  description = "Entorno de desarrollo para AlejandroGS.es (Zola)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          zola
          git
        ];

        shellHook = ''
          echo "Zola"
        '';
      };
    };
}
