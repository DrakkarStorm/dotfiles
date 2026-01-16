#!/bin/bash

set -e

echo "📦 Installation des plugins tmux..."

# Définir le répertoire source
SOURCE_DIR="$HOME/.tmux"

# Créer le dossier si nécessaire
mkdir -p "${SOURCE_DIR}/plugins"

# Cloner TPM (Tmux Plugin Manager)
if [ ! -d "${SOURCE_DIR}/plugins/tpm" ]; then
    echo "Clonage de tpm..."
    git clone https://github.com/tmux-plugins/tpm "${SOURCE_DIR}/plugins/tpm"
fi

# Cloner tmux-sensible
if [ ! -d "${SOURCE_DIR}/plugins/tmux-sensible" ]; then
    echo "Clonage de tmux-sensible..."
    git clone https://github.com/tmux-plugins/tmux-sensible "${SOURCE_DIR}/plugins/tmux-sensible"
fi

# Cloner tmux-prefix-highlight
if [ ! -d "${SOURCE_DIR}/plugins/tmux-prefix-highlight" ]; then
    echo "Clonage de tmux-prefix-highlight..."
    git clone https://github.com/tmux-plugins/tmux-prefix-highlight "${SOURCE_DIR}/plugins/tmux-prefix-highlight"
fi

# Cloner tmux-nord (thème)
if [ ! -d "${SOURCE_DIR}/plugins/tmux-nord" ]; then
    echo "Clonage de tmux-nord..."
    git clone https://github.com/nordtheme/tmux "${SOURCE_DIR}/plugins/tmux-nord"
fi

echo "✅ Plugins tmux installés!"
echo ""
echo "📝 N'oublie pas :"
echo "   1. Lance tmux : tmux"
echo "   2. Installe les plugins : Ctrl-A I (majuscule i)"
echo ""
