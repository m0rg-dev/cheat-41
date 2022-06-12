{ pkgs ? import <nixpkgs> { }, lib ? pkgs.lib }:

pkgs.stdenv.mkDerivation rec {
  name = "dev-shell";

  buildInputs = [ pkgs.xorg.libX11 pkgs.xorg.libXcursor pkgs.xorg.libXrandr pkgs.xorg.libXi pkgs.libGL ];

  LD_LIBRARY_PATH = "${lib.makeLibraryPath buildInputs}";
}
