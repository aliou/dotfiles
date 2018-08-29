#!/usr/bin/env bash

export FZF_DEFAULT_OPTS='--height 40% --reverse --color=light -1'

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/alioudiallo/code/src/github.com/junegunn/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/alioudiallo/code/src/github.com/junegunn/fzf/shell/key-bindings.bash"
