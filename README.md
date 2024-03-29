# (.) dotfiles

Dotfiles for an **Arch Linux** desktop. Subject to change due to my personal tastes.

However, these dotfiles are managed by [chezmoi](https://chezmoi.io), which is unavailable on Fedora at the moment.

## Why Arch?
I want to try NixOS but it's probably better to do so in a sandbox.

## Required packages
With chezmoi, scripts can be easily integrated to install all of this effortlessly. But as of now, I have other commitments and as such I will be listing the dependencies of these dotfiles:

* DE - `gnome` (preinstalled on Fedora)
* Font - full `Noto` fonts, any [`Nerd Font`](https://www.nerdfonts.com/)
* Editor - `neovim`

## Roadmap
I will be focusing more on extending my command line skills, and as such I will be focusing more on CLI. Eventually the desktop will be just a bootloader for my CLI activities.
### 🏃‍♂️ Immediate goals
- [x] Configure Neovim (editor)
- [x] Configure tmux (multiplexer)
- [x] Configure starship (shell)
- [x] Configure zsh with zinit (shell)
### 🎯 Medium to long-term goals
- [x] base16 colors on ~~shell, tmux,~~ nvim
- [x] Configure GNOME keybindings
- [ ] Write scripts for everyday tasks with a tiling WM
- [ ] Integrate more everyday activities to CLI (editor, music player, mail client)
- [ ] Configure aliases to make common commands easier
- [ ] For GUI apps, use GTK 4 as much as possible (because they are more usable and more eye-candy at the same time)
- [ ] Full screen the terminal and never go back [^1]
### VLT (Very Long-Term Goals) 
- [ ] Integrate ansible to further automate installation (on multiple machines)

## How to install
### The easy way (requires [Chezmoi](https://www.chezmoi.io/))
```sh
chezmoi init heygsiri --apply
```
### The copy-paste way
```sh
git clone 'https://github.com/heygsiri/dotfiles'
cd dotfiles
./install.sh 
```
### Try in a docker container (CLI apps only, experimental)
```sh
git clone 'https://github.com/heygsiri/dotfiles'
cd dotfiles/.devcontainer
docker build . -t heygsiri/dotfiles:latest
docker run -it --rm heygsiri/dotfiles:latest bash
```

[^1]: This is mostly a joke, as certain workloads call for GUIs (web browsing, graphics, screencasting). But who knows?
