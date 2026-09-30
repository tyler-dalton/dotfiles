# dotfiles

my linux configs and other terminal nonsense.

built for my kubuntu workstation. managed with [GNU Stow](https://www.gnu.org/software/stow/).

## setup

clone it:

```bash
git clone git@github.com:tyler-dalton/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

then stow whatever you want:

```bash
stow bash
stow cheat
stow fastfetch
stow ghostty
stow git
stow starship
stow vscode
```

or everything:

```bash
stow */

```

probably best to not blindly stow my configs onto your machine. steal what you want.

## machine

currently running on kubuntu + kde plasma.

most of this is built around bash, ghostty, starship, fzf and an extremely unreasonable amount of aliases.

that's pretty much it.
