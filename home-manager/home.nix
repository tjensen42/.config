{ config, pkgs, ... }:

{
  home.username = "tjensen";
  home.homeDirectory = "/home/tjensen";

  home.packages = [
    pkgs.fish
    pkgs.zellij
    pkgs.starship
    pkgs.helix

    pkgs.zoxide
    pkgs.bat
    pkgs.fzf
    pkgs.ripgrep
    pkgs.git
    pkgs.fd
    pkgs.eza
    pkgs.du-dust
    pkgs.hyperfine
    pkgs.manix
    pkgs.jq
    pkgs.sd
  ];

  fonts.fontconfig.enable = true;
  home.packages = [
    (pkgs.nerdfonts.override { fonts = [ "Noto Mono" ]; })
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.stateVersion = "23.05";
}
