#!/usr/bin/env bash
# shellcheck source=/dev/null

export FZF_DEFAULT_OPTS='--height 40% --reverse --color=light -1'

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/opt/homebrew/opt/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
if [[ -f  "/opt/homebrew/opt/fzf/shell/key-bindings.bash" ]]; then
  source "/opt/homebrew/opt/fzf/shell/key-bindings.bash"
fi
