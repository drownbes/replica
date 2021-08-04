with (import ./haskell.nix);
project.shellFor {
  withHoogle = true;
  buildInputs = [
    pkgs.haskellPackages.hpack
    pkgs.zlib
  ];
  tools = {
    cabal = "3.2.0.0";
    hlint = "3.2.7";
    haskell-language-server = "latest";
  };
}
