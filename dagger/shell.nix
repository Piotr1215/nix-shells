# dagger 0.8.7
with import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/9957cd48326fe8dbd52fdc50dd2502307f188b0d.tar.gz") {};
stdenv.mkDerivation {
  name = "dagger-env";
  buildInputs = [ dagger ];
  shellHook = ''
    dagger
  '';
}
