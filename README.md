# My Stowed Files
Contains configuration files for various GNU programs.  
- Emacs  
- Bash  
- Screen  
- Nano  

These configurations are intended to be used with GNU `stow` on MacOS; however this is not a requirement.

## Installing GNU stow
Install GNU `stow` via your system package manager.  

Homebrew:  
`brew install stow`

## To Use
Get to your home directory:  
`cd`  

Clone this repository:  
`git clone https://github.com/kbelleau/stowed.git`  

Change into the `stowed/` directory:  
`cd stowed`  

Use GNU stow to create symlinks:  
`stow .`  

See more information about GNU stow [here](https://www.gnu.org/software/stow/).
