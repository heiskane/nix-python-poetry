# shell.nix
{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
    packages = [
        pkgs.python311
        pkgs.poetry
    ];
    shellHook = ''
      poetry env use $PYTHONPATH/../../../bin/python &&
      poetry install &&
      poetry update &&
      poetry shell
    '';
}
