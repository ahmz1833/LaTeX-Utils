#!/bin/bash

# Define the installation directory
INSTALL_DIR="$HOME/latex_utils"

# Create the installation directory if it doesn't exist
mkdir -p "$INSTALL_DIR"

# Clone the latex_utils repository
git clone https://github.com/ahmz1833/LaTeX-Utils.git "$INSTALL_DIR"
cd "$INSTALL_DIR"
git checkout master
git pull origin master

# Add the 'create-latex' command to the user's PATH
echo "Adding the 'create-latex' command to your PATH..."

# Ensure ~/.local/bin exists
mkdir -p ~/.local/bin

# Make a symbolic link to the 'create-latex' script
ln -s "$INSTALL_DIR/create-latex.sh" ~/.local/bin/create-latex

# Make the scripts executable
chmod +x ~/.local/bin/create-latex

# Check if ~/.local/bin is in PATH
if ! echo "$PATH" | grep -q "$HOME/.local/bin"; then
    echo "Adding ~/.local/bin to PATH in your shell configuration file."
    
    # Detect the default login shell
    DEFAULT_SHELL=$(basename "$(getent passwd "$USER" | cut -d: -f7)")

    case "$DEFAULT_SHELL" in
        zsh)
            echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
            echo "Please restart your shell or run 'source ~/.zshrc' to apply changes."
            ;;
        bash)
            echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
            echo "Please restart your shell or run 'source ~/.bashrc' to apply changes."
            ;;
        *)
            echo "Unable to determine shell configuration file for $DEFAULT_SHELL."
            echo "Please add the following line to your shell's configuration file manually:"
            echo 'export PATH="$HOME/.local/bin:$PATH"'
            ;;
    esac
else
    echo "~/.local/bin is already in PATH."
fi

echo "Installation complete. You can now use the 'create-latex' command to create new LaTeX projects."
