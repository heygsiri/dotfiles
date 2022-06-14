# (.) dotfiles

Dotfiles for a **Fedora 36** that can obtain software via the official repos, RPM Fusion, and Flatpak. This desktop uses **GNOME 42** and **Adwaita**. It focuses on stability and prides itself on a configuration that changes (mostly) for functionality rather than form.

However, these dotfiles are managed by [chezmoi](https://chezmoi.io), which is unavailable on Fedora at the moment.

## Why Fedora?
As Fedora is regularly updated while being stable enough to avoid maintenance tasks that would be required on DIY-focused distros, expect fewer breakages (such as packages not being available).

I have tried Arch before but the effort required to maintain my setup became too taxing. This does not mean I hate Arch however, as I still revisit it when I have free time. Just not worth the trouble for a daily driver.

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
- [ ] Configure zsh with zinit (shell)
### 🎯 Medium to long-term goals
- [ ] base16 colors on shell, tmux, nvim
- [ ] Configure GNOME keybindings
- [ ] Autoinstall script for packages
- [ ] Integrate more everyday activities to CLI (editor, music player, mail client)
- [ ] Configure aliases to make common commands easier
- [ ] For GUI apps, use GTK 4 as much as possible (because they are more usable and more eye-candy at the same time)
- [ ] Full screen the terminal and never go back [^1]

[^1]: This is mostly a joke, as certain workloads call for GUIs (web browsing, graphics, screencasting). But who knows?
