{ config, pkgs, ... }:

{
  home.username = "joreis";
  home.homeDirectory = "/home/joreis";

  home.stateVersion = "24.05"; # Please read the comment before changing.

  home.packages = with pkgs; [
    neovim
    nmap
    dnsutils
    htop
    python312
    age
    sops
    tree
  ];

  home.file = {
  };

  home.sessionVariables = {
  };

  imports = [
    ./home-modules/zsh-ohmyzsh.nix
    ./home-modules/ssh-config.nix
  ];

  programs.home-manager.enable = true;
}
