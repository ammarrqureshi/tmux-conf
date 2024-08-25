#!/bin/bash

# Update and install Neovim
sudo apt update
sudo apt install -y neovim

# Clone your Neovim configuration from GitHub
# Replace <your-nvim-repo-url> with your actual GitHub repository URL
git clone https://github.com/ammarrqureshi/nvim-config.git ~/.config/nvim

# Install tmux
sudo apt install -y tmux

# Clone the tmux.conf file from GitHub and copy it to /etc
# Replace <your-tmux-repo-url> with your actual GitHub repository URL
git clone https://github.com/ammarrqureshi/tmux-conf.git ~/tmux-config
sudo cp ~/tmux-config/tmux.conf /etc/tmux.conf

# Clean up
rm -rf ~/tmux-config

echo "Installation and setup complete!"
