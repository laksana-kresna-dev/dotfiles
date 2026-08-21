# Dotfiles

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/) and version-controlled via Git. Automatically configures development environment across devices.

---

## ⚡ Quick Start / One-Liner

To provision a new machine or apply configurations on a fresh installation, run:

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply laksana-kresna-dev
```

##  Tech Stack & Utilities

- Dotfiles Manager: chezmoi
- Shell: Zsh / Bash
- Text Editor: Neovim ( AstroNvim )
- Multiplexer: Tmux
- OS / Distribution Support: Arch Linux

##  Usage & Workflow

```bash
chezmoi init [https://github.com/](https://github.com/)laksana-kresna-dev/dotfiles.git
chezmoi apply
```

## 󰿃 License

MIT © 2026 Anak Agung Bagus Kresna Laksana
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
