#!/usr/bin/env bash

export FZF_DEFAULT_OPTS='--height 40% --reverse --color=light -1'

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/opt/fzf/shell/key-bindings.bash"
