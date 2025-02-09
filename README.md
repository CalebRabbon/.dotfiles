# .dotfiles
## Installation
1. In the shell run the following commands
```
git clone https://github.com/CalebRabbon/.dotfiles.git ~/
chmod +x ~/.dotfiles/setup.sh
./.dotfiles/setup.sh
```
## Notes
This will create symlinks in the user's ~/ or $HOME directory to the files in the ~/.dotfiles/ folder.

Originally I was using the stow command but it wasn't working properly for standalone files in the .dotfiles folder like .bashrc.

There was a bug in stow versions 2.4.0 and prior with the --dotfile flag. The default apt upgrade command doesn't upgrade stow to the newest version so I made a work around.

I don't want to depend on stow if I setup a new machine and the ubuntu store hasn't cached the latest version of stow.

The stow command by default makes symlinks in the parent folder of the current directory you ran the command.

If you change any of the dotfiles you will need to git push the changes.

When using a new computer or updating an outdated computer follow the Installation guide.
