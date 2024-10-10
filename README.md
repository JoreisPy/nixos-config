# NixOS Configuration

This repository contains my personal NixOS configuration managed with Nix flakes and Home-Manager. It includes system-wide settings, user-specific configurations, and package management.

## Features

- **Zsh and Oh-My-Zsh**: Managed through Home-Manager, including plugins like `zsh-autosuggestions` and `zsh-syntax-highlighting`.

## How to Use

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/JoreisPy/nixos-config.git
   ```

2. Change into the cloned directory:

   ```bash
   cd nixos-config
   ```

3. Apply the Configuration

   ```bash
   sudo nixos-rebuild switch --flake ~/nixos-config#default
   ```
