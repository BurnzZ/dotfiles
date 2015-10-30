For this to be as lightweight as possible,
I've separated my vim and tmux files into this repo:
* [https://github.com/BurnzZ/vim-setup](https://github.com/BurnzZ/vim-setup)
* [https://github.com/BurnzZ/tmux-setup](https://github.com/BurnzZ/tmux-setup)

These people inspired almost all of my dotfiles:
* [Paul Irish](https://github.com/paulirish/dotfiles)
* [Cătălin Mariș](https://github.com/alrra/dotfiles)
* [Tom Vincent](https://github.com/tlvince/vim-config)
* [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)

# Installation

```sh
sudo sh install.sh
```


Warning
-
Running `install.sh` would create symlinks into your _home directory_,
overwriting any existing files. I have yet to improve the script to backup
current files before writing.
