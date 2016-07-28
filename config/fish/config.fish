set -x EDITOR emacs

set -x PATH $PATH /Applications/CoqIDE_8.4pl5.app/Contents/Resources/bin/

alias python ipython

eval (docker-machine env default)

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
