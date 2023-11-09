{ config, pkgs, ... }:

{
  home.username = "tjensen";
  home.homeDirectory = "/home/tjensen";

  home.packages = [
    # Dev
    pkgs.alacritty
    pkgs.wezterm
    pkgs.fish
    pkgs.zellij
    pkgs.starship
    pkgs.helix
    pkgs.rustup

    # C / C++
    pkgs.lld_16
    pkgs.lldb_16
    pkgs.clang_16
    pkgs.clang-tools_16
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
    pkgs.gitui
    pkgs.fzf    
    pkgs.jq
    pkgs.lsof
    pkgs.neofetch

    pkgs.nodejs_21
    pkgs.python3

    # Language Server
    pkgs.nodePackages_latest.typescript-language-server
    pkgs.python311Packages.python-lsp-server        
    pkgs.marksman
    pkgs.vscode-langservers-extracted
    pkgs.taplo
    pkgs.nodePackages_latest.bash-language-server
    pkgs.yaml-language-server
    pkgs.lua-language-server
    pkgs.cmake-language-server
    pkgs.dockerfile-language-server-nodejs

    # Manpages
    pkgs.llvmPackages_16.llvm-manpages
    pkgs.llvmPackages_16.lldb-manpages
    
    # Fonts
    (pkgs.nerdfonts.override { fonts = [ "RobotoMono" ]; })
  ];

  fonts.fontconfig.enable = true;

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  home.stateVersion = "23.05";
}
