#!/bin/bash

# Check if the project directory path is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 /path/to/project/directory"
  exit 1
fi

# Assign the first argument to the project_dir variable
project_dir="$1"

# Check if the directory exists
if [ ! -d "$project_dir" ]; then
  echo "Directory does not exist. Please enter a valid path."
  exit 1
fi

# Change to the projects directory
cd "$project_dir" || exit

# Start a new tmux session named "myproject"
tmux new-session -d -s myproject

# Split the window horizontally
tmux split-window -h

# Create a new window for Neovim
tmux new-window -n editor

# Start Neovim in the new window
tmux send-keys -t myproject:editor 'nvim' C-m

# Attach to the tmux session
tmux attach-session -t myproject
