# Shae has dotfiles too
These are my personal dotfiles, tailored to my size and needs. Don't use them unless you know what you're doing, the risk is yours to take.
Since I'm a lazy person, I decided to use GNU Stow to symlink my dotfiles to my config folder.

> Heck, *I* don't even know what goes inside of these.

# Packages

## Alacritty
I'm defaulting to Alacritty for linux distros, for Windows it is Alacritty + PWSH, but I'm using terminal since it's easier with the nerdfonts on WSL
Here are some default configs that aren't really that important, only fonts and window styling.

## Bash
I'm not really using bash, I rely solely on zsh, so this package will mostly remain unatennded.

## Git
Some initial configuration for now, there's much to be done there.

## Neovim
This is a forked version of 💤 [LazyVim](https://github.com/LazyVim/LazyVim), tweaked to my likes and needs.
Refer to the [documentation](https://lazyvim.github.io/installation) for a thorough experience setting this up.

> gruvbox ftw

### Coming up next
I'm looking towards a smoother integration of Harpoon since there are still a couple of mappings that require some gymnastics, having to fumble with too many keystrokes 

> Still learning what some of these plugins do. Some are very basic, others are more sophisticated.

### Issues I'm looking to solve
- tab navigation is wonky, tabs don't properly close (still looking which plugin handles these)
- harpoon pop-up menu is also wonky, deleting saved files sometimes doesn't work

### Integrations
This config combines LazyVim with some of ThePrimeagen configs from his own setup.
It is leveraging tmux multiplexing sessions along with vim-tmux-navigator for increased productivity.

## Oh-my-posh
My go-to terminal pretifier.

## Tmux
Based on [the Zen tmux config](https://youtu.be/DzNmUNvnB04?si=M0ZjLt8ZZM3NlBUT).
Prefix is ctrl+space

> Pretty standard config if you ask me.

## Zsh
My main shell environment.

# How many times did I write config?
Count'em

# Installing a specific config
For my dotfiles I've created symlinks using [GNU Stow](https://www.gnu.org)
Also, follow [this tutorial](https://www.youtube.com/watch?v=NoFiYOqnC4o) to understand the gnu convention for these folders

## What's the procedure, then?

1. First, we move to our dotfiles `cd ~/dotfiles/`
2. Then run `stow [package]` (such as `stow nvim`)
3. Done, you can check if it worked running `ls -latr ~.config | [package]`

# Author
Juan José Ramayo Cabeza
