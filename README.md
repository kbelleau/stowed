# My Stowed Files
Contains configuration files for various GNU programs.  
- Bash  
- Emacs  
- Nano  

## To Use
Get to your home directory:  
`cd`  

Clone this repository:  
`git clone https://github.com/kbelleau/stowed.git`  

Change into the `stowed/` directory:  
`cd stowed`  

Use GNU stow to create symlinks:  
`stow .`  

Or, copy the files into your home directory.  

Files prefixed with "served" are intended for use on production Linux servers.

## Installing GNU stow
Install GNU `stow` via your system package manager.  

Homebrew:  
`brew install stow`  

See more information about GNU stow [here](https://www.gnu.org/software/stow/).
