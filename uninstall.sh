#!/usr/bin/env bash

# Determine the shell type
shell=$(basename "$SHELL")

# Print a message indicating the uninstallation process
echo "Uninstalling Aptu aliases..."

# Remove the alias file
rm -f "$HOME/.local/share/aptu-aliases.sh"

# Escape slashes in the path for sed
escaped_path=$(printf '%s' "$HOME/.local/share/aptu-aliases.sh" | sed 's/[\/&]/\\&/g')

# Define the appropriate rc file based on the shell type
case "$shell" in
    bash)
        rc_file="$HOME/.bashrc"
        ;;
    zsh)
        rc_file="$HOME/.zshrc"
        ;;
    *)
        echo "Shell not supported!"
        exit 1
        ;;
esac

# Remove the 'source' line from the rc file
sed -i "/source $escaped_path/d" "$rc_file"

# Print a success message
echo "Aptu aliases successfully uninstalled!"

# Give information about restarting the terminal
echo "Please restart your terminal to apply the changes."