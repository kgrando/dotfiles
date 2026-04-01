# dotfiles

Personal dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/), forked from der-faebu's setup.

## What is Stow?

Stow is a symlink manager. Each subdirectory in this repo is a **package**. When you run `stow <package>`, it creates symlinks from the package into your home directory, mirroring the folder structure. This keeps all configs version-controlled in one place.

For example, `stow bash` symlinks `bash/.bashrc` → `~/.bashrc`.

This repo is expected to live at `~/.dotfiles`.

---

## Tools overview

| Tool | What it does |
|---|---|
| **bash** | Shell configuration, aliases, SSH agent, vi mode, tmux auto-attach |
| **tmux** | Terminal multiplexer — run multiple terminals in one window, persist sessions across SSH disconnects. Includes popup shortcuts for lazygit, yazi, ipython |
| **nvim** | Neovim editor with LSP, telescope (fuzzy finder), harpoon (file bookmarks), gitsigns, treesitter, catppuccin/dracula themes |
| **yazi** | Modern terminal file manager (Rust). Fast, with image preview, bulk rename, and plugin support. Replaces ranger |
| **ranger** | Classic terminal file manager (Python). Miller column layout with vim keybindings. Kept for compatibility |
| **kitty** | GPU-accelerated terminal emulator. Supports ligatures, image display, and splits |
| **lazygit** | Terminal UI for git. Stage, commit, push, rebase, cherry-pick — all without typing git commands |
| **k9s** | Terminal UI for Kubernetes. Browse pods, logs, deployments, exec into containers. Includes lnav plugin for log analysis |
| **lnav** | Log file navigator with SQL queries, automatic format detection, syntax highlighting, and live tailing. Used standalone and via k9s for pod logs |
| **bat** | `cat` replacement with syntax highlighting and git integration |
| **oh-my-posh** | Cross-shell prompt theme engine. Uses the "velvet" theme |
| **nushell** | Structured data shell (alternative to bash). Treats command output as tables |
| **kubecm** | Kubernetes context/config manager. Switch clusters with `ks` alias |
| **htop** | Interactive process viewer with CPU/memory monitoring |
| **tealdeer** | Fast `tldr` client — community-maintained simplified man pages |
| **spotify_player** | Terminal Spotify client with playback control |
| **i3** | Tiling window manager for Linux with Nordic theme and gaps |
| **neofetch** | System info display |

---

## Setup a new machine / Add configurations

The directory layout of this repo is designed to work with [GNU Stow](https://www.gnu.org/software/stow/).
Therefore, we rely upon a certain folder structure in order for the dotfiles to be symlinked to the right place.
It is assumed that this repo is cloned into a hidden folder (`.dotfiles`) directly in the user profile.
By default, stow will set the target path to the parent folder of itself (= the user's profile).
Every package (= subdirectory containing config files) must therefore respect this layout.

Due to its nature of being a symlink manager, adding new configs and deploying new machines work in the same way.

### Linux (Debian/Ubuntu)

1. Install system packages and brew tools:
    ```bash
    sudo apt install git htop kitty neofetch neovim trash-cli ranger
    ```
    ```bash
    brew install nushell tmux jandedobbeleer/oh-my-posh/oh-my-posh yazi k9s kubecm kubectl-cnpg stow bash-completion@2 lnav stern
    ```
    ```bash
    brew install --cask font-fira-code-nerd-font
    ```
    ```bash
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    git clone https://github.com/dracula/tmux.git ~/.tmux/plugins/dracula
    ```
2. Add Nerd Fonts to the shell. Each terminal emulator has its own way of doing this, so please refer to the documentation of your terminal emulator.
3. Clone this repo:
    ```bash
    git clone --config core.autocrlf=input --config core.eol=lf https://github.com/kgrando/dotfiles.git $HOME/.dotfiles
    ```
4. If you just want to add a new config, create the folder structure within the repo and move the config files there.
5. Run `stow <dir_name>` to create the symlinks in the cloned directory:
    ```bash
    cd $HOME/.dotfiles
    stow bash bat htop i3 k9s kitty lazygit lnav neofetch nushell nvim poshthemes ranger spotify_player tealdeer tmux yazi
    ```
6. Reload tmux config: tmux session → `Ctrl+B :` → `source-file ~/.tmux.conf`

### macOS

Same as above, but skip `i3` (Linux-only) and use `brew` for everything:

1. Install CLI tools and GUI apps:
    ```bash
    brew install bash git htop neovim trash-cli ranger nushell tmux \
      jandedobbeleer/oh-my-posh/oh-my-posh yazi k9s kubecm kubectl-cnpg \
      stow bash-completion@2 lnav stern yq bat lazygit tealdeer
    ```
    ```bash
    brew install --cask font-fira-code-nerd-font kitty iterm2
    ```
    ```bash
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    git clone https://github.com/dracula/tmux.git ~/.tmux/plugins/dracula
    ```
2. Add Nerd Fonts to the shell. Each terminal emulator has its own way of doing this, so please refer to the documentation of your terminal emulator.
3. Clone this repo:
    ```bash
    git clone --config core.autocrlf=input --config core.eol=lf https://github.com/kgrando/dotfiles.git $HOME/.dotfiles
    ```
4. If you just want to add a new config, create the folder structure within the repo and move the config files there.
5. Run `stow <dir_name>` to create the symlinks in the cloned directory:
    ```bash
    cd $HOME/.dotfiles
    stow bash bat htop k9s kitty lazygit lnav neofetch nushell nvim poshthemes ranger spotify_player tealdeer tmux yazi
    ```
6. Reload tmux config: tmux session → `Ctrl+B r` (or `Ctrl+B :` → `source-file ~/.tmux.conf`)

---

## Keybindings

### tmux (prefix = `Ctrl+B`)

| Key | Action |
|---|---|
| `Ctrl+B, \|` | Split pane vertically |
| `Ctrl+B, -` | Split pane horizontally |
| `Ctrl+H/J/K/L` | Navigate panes (no prefix, vim-style) |
| `Ctrl+B, Ctrl+Y` | **lazygit** popup |
| `Ctrl+B, Ctrl+R` | **yazi** file manager popup |
| `Ctrl+B, Ctrl+N` | Create new named session |
| `Ctrl+B, Ctrl+J` | fzf session switcher |
| `Ctrl+B, Ctrl+P` | IPython REPL popup |
| `Ctrl+B, Ctrl+T` | Quick bash shell popup |
| `Ctrl+B, r` | Reload tmux config |
| `Ctrl+B, c` | New window |
| `Ctrl+B, n/p` | Next/previous window |
| `Ctrl+B, [` | Enter copy mode (scroll/search) |
| `Ctrl+B, ]` | Paste from buffer |
| `Ctrl+B, d` | Detach session |

### nvim

| Key | Action |
|---|---|
| `Space` | Leader key |
| `jj` | Escape (insert mode) |
| `Space+w` | Switch window |
| `Space+ff` | Telescope find files |
| `Space+fg` | Telescope live grep |
| `Ctrl+H/J/K/L` | Navigate between tmux/nvim panes seamlessly |

### yazi

| Key | Action |
|---|---|
| `h/j/k/l` | Navigate (vim-style) |
| `Enter` | Open file |
| `Space` | Select file |
| `d` | Trash selected |
| `r` | Rename |
| `a` | Create file |
| `.` | Toggle hidden files |
| `q` | Quit (cd to directory if launched with `y` function) |

### k9s

| Key | Action |
|---|---|
| `:` | Command mode (type resource like `pods`, `deploy`, `svc`) |
| `Ctrl+Y` | Open pod logs in **lnav** (custom plugin) |
| `/` | Filter resources |
| `d` | Describe resource |
| `l` | View logs |
| `s` | Shell into container |
| `Ctrl+D` | Delete resource |

### lnav

| Key | Action |
|---|---|
| `F2` | Toggle mouse mode (enabled by default in this config) |
| `;` | SQL query prompt |
| `:` | Command prompt |
| `/` | Regex search |
| `n / N` | Next/previous search match |
| `e / E` | Next/previous error |
| `w / W` | Next/previous warning |
| `< / >` | Jump between error markers (custom keymap) |
| `i` | Histogram view |
| `Tab` | Switch between views (log, text, histogram, SQL) |
| `g / G` | Go to top/bottom |
| `m` | Mark/bookmark a line |
| `u / U` | Next/previous bookmark |
| `Ctrl+W` | Toggle word-wrap |
| `x` | Show/hide log message fields |
| `z` | Zoom into single log source |
| `p` | Toggle pretty-print of structured data |

### bash aliases

| Alias | Command |
|---|---|
| `k` | `kubectl` |
| `h` | `helm` |
| `ks` | `kubecm switch` |
| `dc` | `docker compose` |
| `dpurge` | `docker system prune -a --volumes` |
| `y` | yazi with directory tracking |
| `tssh <host>` | SSH + auto-rename tmux window |
| `myip` | Show public IP address |
| `mip` | Show local IP addresses |
| `ll / llr` | Long listing / sorted by date |
| `rm` | Safe delete via `trash` |

---

## File structure

```text
~/.dotfiles/
├── bash/           → .bashrc, .bash_aliases, .profile
├── bat/            → Syntax highlighting config (Catppuccin Mocha theme)
├── htop/           → Process monitor layout and settings
├── i3/             → Tiling window manager config (Linux only)
├── k9s/            → Kubernetes dashboard config + lnav plugin
├── kitty/          → Terminal emulator config (FiraCode, opacity, keybinds)
├── lazygit/        → Git TUI config
├── lnav/           → Log navigator config (Dracula theme, K8s log format, mouse enabled)
├── neofetch/       → System info display config
├── nushell/        → Structured shell config
├── nvim/           → Neovim config (LSP, telescope, harpoon, treesitter)
├── poshthemes/     → Oh-My-Posh prompt themes (200+)
├── ranger/         → File manager config (miller columns, rifle.conf)
├── spotify_player/ → Terminal Spotify client config
├── tealdeer/       → tldr pages config
├── tmux/           → Terminal multiplexer (Dracula theme, popups, vim-nav)
├── yazi/           → Modern file manager config (Tokyo Night theme)
├── brewCasks.txt   → List of installed GUI apps (brew cask)
└── brewPackages.txt → List of installed CLI tools (brew)
```

## Export brew packages

```bash
brew list --cask > $HOME/.dotfiles/brewCasks.txt
brew list --installed-on-request > $HOME/.dotfiles/brewPackages.txt
```
