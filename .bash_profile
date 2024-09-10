# kbelleau - .bash_profile - MacOS w/ homebrew
# configured on MacOS Sonoma

# add homebrew environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# adjust PATH to include homebrew
PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:\
$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin:\
$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:\
$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin:\
$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:\
$HOMEBREW_PREFIX/opt/gawk/libexec/gnubin:\
$PATH"

# add local bin to PATH
[[ -d "$HOME/bin" ]] && PATH="$HOME/bin:$PATH"

# export PATH now
export PATH

# source .bashrc
[[ -r "$HOME/.bashrc" ]] && source "$HOME/.bashrc"
