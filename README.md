# NixOS Configuration

This repository contains my personal NixOS configuration managed with Nix flakes and Home-Manager. It includes system-wide settings, user-specific configurations, and package management.

## Structure

The configuration is modularized to keep things clean and organized. Here's an overview of the key files and directories:


## Features

- **Zsh and Oh-My-Zsh**: Managed through Home-Manager, including plugins like `zsh-autosuggestions` and `zsh-syntax-highlighting`.
- **SSH Management**: Automatically manages SSH keys and configurations.
- **System Packages**: Configured using Nix flakes, ensuring reproducibility.
- **Home-Manager**: Provides user-specific package management and settings.

## How to Use

### Clone the Repository

1. Clone this repository to your local machine:

   ```bash
   git clone git@github.com:your-username/nixos-config.git
   ```

2. Change into the cloned directory:

   ```bash
   cd nixos-config
   ```

3. Apply the Configuration

   ```bash
   sudo nixos-rebuild switch --flake .#default
   ```
