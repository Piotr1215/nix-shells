with import <nixpkgs> {};

stdenv.mkDerivation {
  name = "dapr-env";

  buildInputs = [
    dapr-cli
  ];

  # The '' quotes are 2 single quote characters
  # They are used for multi-line strings
  shellHook = ''
    dapr
  '';
}
