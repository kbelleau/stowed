# My Stowed Files
Configuration files for various GNU programs. Mainly Emacs and Bash.  

These configurations are intended to be used with GNU `stow` on MacOS; however this is not a requirement.  

## Installing GNU stow
Install GNU `stow` via your system package manager.  

Homebrew:  
`brew update && brew install stow`

## Installation  
Get to your home directory:  
`cd`  

Clone this repository:  
`git clone https://github.com/kbelleau/stowed.git`  

Change into the `stowed/` directory:  
`cd stowed`  

Use GNU stow to create symlinks:  
`stow .`  

See more information about GNU stow [here](https://www.gnu.org/software/stow/).
