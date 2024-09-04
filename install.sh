#!/usr/bin/env bash

# Print cool ascii "Aptu" art
cat << 'EOF'

   ▄████████    ▄███████▄     ███     ███    █▄
  ███    ███   ███    ███ ▀█████████▄ ███    ███
  ███    ███   ███    ███    ▀███▀▀██ ███    ███
  ███    ███   ███    ███     ███   ▀ ███    ███
▀███████████ ▀█████████▀      ███     ███    ███
  ███    ███   ███            ███     ███    ███
  ███    ███   ███            ███     ███    ███
  ███    █▀   ▄████▀         ▄████▀   ████████▀

EOF

# Print description
echo -e "Aptu is a set of aliases that make package management easier on Debian-based systems.\n\n"

# Determine the shell type
shell=$(basename "$SHELL")

# Print a message indicating the installation process
echo "Installing Aptu aliases..."

# Copy the aliases file to user's local share directory
cp -r aptu-aliases.sh $HOME/.local/share/

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

# Add the 'source' line to the rc file
echo "source $HOME/.local/share/aptu-aliases.sh" >> $rc_file

# Print a success message
echo "Aptu aliases successfully installed!"

# Give information about restarting the terminal or sourcing the rc file
echo "Please restart your terminal or run 'source $rc_file' to apply the changes."