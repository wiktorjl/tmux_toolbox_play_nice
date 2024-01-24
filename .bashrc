if [ -f "/run/.containerenv" ]; then
    TOOLBOX_NAME=$(awk -F '=' '/name=/ {gsub(/"/, "", $2); print $2}' /run/.containerenv)
else
    TOOLBOX_NAME=""
fi

alias tmux='tmux -L envname_'$TOOLBOX_NAME

