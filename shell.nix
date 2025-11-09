{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  inputsFrom = [ (pkgs.callPackage ./nix/package.nix {}) ];
  
  packages = with pkgs; [
    clang-tools
    rust-analyzer
    cmake-format
  ];

  shellHook = ''
    echo "CuteCosmic development environment"
    echo "Run 'cmake -S . -B build' to configure"
  '';
}