# simple.nix
with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    dagger-0.2.6
  ];
}
