# 🏠 Dotfiles

Ma configuration macOS automatisée avec [chezmoi](https://www.chezmoi.io/).

## Installation
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply git@github.com:DrakkarStorm/dotfiles.git
```

Tu seras invité à renseigner :
- Email, nom complet
- GPG key ID (optionnel, laisse vide au début)

## Ce qui est configuré

- **Zsh** : aliases, historique, GPG
- **Git** : config avancée avec signature GPG
- **Homebrew** : installation auto des apps (VSCode, Ghostty, Chrome, etc.)
- **GPG** : agent avec cache de mot de passe

## Configuration GPG (optionnel)
```bash
# Installer et générer une clé
brew install gnupg pinentry-mac
gpg --full-generate-key

# Récupérer l'ID
gpg --list-secret-keys --keyid-format=long
# → copier l'ID (ex: 3AA5C34371567BD2)

# Ajouter à chezmoi
chezmoi edit-config
# Ajoute : gpg_key = "3AA5C34371567BD2"

# Appliquer
chezmoi apply
```

## Commandes utiles
```bash
# Ajouter un fichier
chezmoi add ~/.config/app/config.yml

# Voir les changements
chezmoi diff

# Appliquer
chezmoi apply -v

# Mettre à jour depuis git
chezmoi update

# Éditer dans le repo source
chezmoi edit ~/.zshrc
```

## Structure
```
├── .chezmoi.toml.tmpl              # Config avec prompts
├── dot_gitconfig.tmpl              # Git config
├── dot_zshrc.tmpl                  # Zsh config
├── private_dot_gnupg/              # GPG config
└── run_once_install-packages.sh    # Homebrew packages
```

---

📚 [Doc chezmoi](https://www.chezmoi.io/) • 🔧 [Templates](https://www.chezmoi.io/user-guide/templating/)
