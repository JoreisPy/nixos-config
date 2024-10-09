{ config, pkgs, ... }:

{
  # Enable SSH and manage SSH configuration and keys
  programs.ssh = {
    enable = true;

    # Specify the SSH key(s) to be generated or managed
    extraConfig = ''
      Host github.com
        HostName github.com
        user git
	IdentityFile ~/.ssh/github
    '';

      }
    ];
  };
}
