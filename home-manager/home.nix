{ config, pkgs, ... }:

{
  home.username = "tjensen";
  home.homeDirectory = "/home/tjensen";

  home.packages = [
    # Dev
    pkgs.fish
    pkgs.zellij
    pkgs.starship
    pkgs.helix
    pkgs.rustup

    # C / C++
    pkgs.clang_16
    pkgs.lld_16
    pkgs.gnumake
    pkgs.cmake
    
    # Rust cli
    pkgs.bat
    pkgs.dogdns
    pkgs.du-dust
    pkgs.eza
    pkgs.fd
    pkgs.hyperfine
    pkgs.procs
    pkgs.ripgrep
    pkgs.sd
    pkgs.tokei
    pkgs.zoxide

    # Additional
    pkgs.git
    pkgs.fzf    
    pkgs.jq
    pkgs.python3
    
    # Fonts
    (pkgs.nerdfonts.override { fonts = [ "Noto" ]; })
  ];

  fonts.fontconfig.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.stateVersion = "23.05";
}
