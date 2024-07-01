# kbelleau - .bash_profile - MacOS w/ homebrew
# configured on MacOS Sonoma

# add homebrew environment
eval "$(/opt/homebrew/bin/brew shellenv)"

# adjust PATH to include homebrew
PATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnubin:\
$HOMEBREW_PREFIX/opt/grep/libexec/gnubin:\
$HOMEBREW_PREFIX/opt/gnu-sed/libexec/gnubin:\
$HOMEBREW_PREFIX/opt/gnu-tar/libexec/gnubin:\
$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin:\
$HOMEBREW_PREFIX/opt/gawk/libexec/gnubin:\
$PATH"

# add user bin to PATH, if it exists
if [[ -d "$HOME/bin" ]]; then
  PATH="$HOME/bin:$PATH"
fi

# export PATH now
export PATH

# assign EDITOR
if [[ -f "$HOMEBREW_PREFIX/bin/nano" ]]; then
  export EDITOR="$HOMEBREW_PREFIX/bin/nano"
fi

# load .bashrc if it exists
if [[ -f "$HOME/.bashrc" ]]; then
  source "$HOME/.bashrc"
fi
