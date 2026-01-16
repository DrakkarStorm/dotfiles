#!/bin/bash

# Installation de Homebrew si nécessaire
if ! command -v brew &> /dev/null; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Ajouter Homebrew au PATH pour les Mac Apple Silicon
    if [[ $(uname -m) == 'arm64' ]]; then
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
fi

# Installation des packages
brew bundle --file=- <<EOF
# Terminaux et shells
brew "zsh"
brew "antigen"

# Useful commands
brew "wget"
brew "curl"
brew "jq"
brew "tree"

# Dev tools
brew "git"
brew "gh"
cask "visual-studio-code"
cask "ghostty"

# Productivity
cask "google-chrome"
cask "notion"

# DevOps/SRE tools
brew "kubectl"
brew "terraform"
brew "docker"
brew "helm"
brew "gnupg"

# Utilities
cask "rectangle"  # Window management
EOF
