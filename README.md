# Arch Rice

Hyprland rice for Arch Linux

## Includes
- Hyprland
- Waybar
- Kitty
- Tofi
- Yazi
- Neovim

# Install packages

```bash
sudo pacman -S --needed -< packages.txt
```

# Grub
For some IdeaPads, in my experience, there can be some issues with the laptop keyboard completely breaking upon hibernating or suspending the system.
To fix this, you can append i8042.reset to `GRUB_CMDLINE_LINUX_DEFAULT` in `/etc/default/grub` resolve the keyboard breaking.
e.g. `GRUB_CMDLINE_LINUX_DEFAULT="... i8042.reset"`
