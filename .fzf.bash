# Setup fzf
# ---------
if [[ ! "$PATH" == */home/p/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/p/.fzf/bin"
fi

eval "$(fzf --bash)"
