{ config, pkgs, ... }:

{
  # Install zsh, eza, fzf, zoxide, and other required packages
  home.packages = with pkgs; [
    zsh
    git
    eza
    fzf        # Fuzzy finder
    zoxide     # Zoxide
    zsh-autosuggestions
    zsh-syntax-highlighting
  ];

  # Enable Zsh and configure Oh-My-Zsh
  programs.zsh.enable = true;

  programs.zsh.oh-my-zsh.enable = true;
  programs.zsh.oh-my-zsh = {
    # Specify the theme (agnoster or any other Oh-My-Zsh theme)
    theme = "agnoster";

    # Plugins for Oh-My-Zsh
    plugins = [
      "git"
    ];
  };

  # Zsh aliases, including the eza alias for `ll`
  programs.zsh.shellAliases = {
    ll = "eza -la --group-directories-first --icons";
  };

  # Additional Zsh configurations
  home.file.".zshrc".text = ''
    # Fuzzy finder setup
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

    # Zoxide setup (initialize the command)
    eval "$(zoxide init zsh)"

    # Custom aliases and other shell configurations
    alias ll="eza -la --group-directories-first --icons"

    # Load zsh-autosuggestions and zsh-syntax-highlighting manually
    source ${pkgs.zsh-autosuggestions}/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source ${pkgs.zsh-syntax-highlighting}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  '';
}
