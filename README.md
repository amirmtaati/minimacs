# Minimal Emacs Config

Ultra-compressed Emacs configuration in 30 lines.

## Features

- **Navigation**: Ivy/Counsel fuzzy search, Projectile project management
- **Programming**: Company autocomplete, Flycheck syntax, Magit git, Python/Go modes
- **Editor**: Evil vim bindings, clean UI, no backup files
- **Windows**: Ace-window jumping (`M-o`), smart keybindings
- **Org**: Deft search (`C-c d`) for org-roam-style note management

## Key Bindings

| Key       | Action                |
|-----------|-----------------------|
| `M-o`     | Jump to window        |
| `C-c d`   | Search notes (Deft)   |
| `C-x g`   | Git status (Magit)    |
| `C-c p`   | Projectile commands   |
| `C-x |/-` | Split window          |

## Setup

1. Copy `init.el` to `~/.emacs.d/`
2. Update `org-directory` path
3. Launch Emacs (packages auto-install)

## Requirements

- Fira Code font
