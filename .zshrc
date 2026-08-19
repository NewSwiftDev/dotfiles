# THIS FILE IS UNDER VERSION CONTROL.  MAKE CHANGES IN YOUR REPO!!!!! #
#*********************************************************************#

# OS Specific Config
case "$OSTYPE" in
  darwin*)
    export SYSTEM_ICON=""
  ;;
  *)
    export SYSTEM_ICON="🐧"
  ;;
esac

# Setup Prompt
autoload -U colors && colors
setopt PROMPT_SUBST
NORMAL_USER="mark.honomichl"
user_host_segment() {
  if [[ "$USER" != "$NORMAL_USER" ]]; then
    echo "%{$fg[green]%}$SYSTEM_ICON %n@%m: %{$reset_color%}"
  else
    echo "%{$fg[green]%}$SYSTEM_ICON %m: %{$reset_color%}"
  fi
}

PS1='$(git_prompt)$(user_host_segment)%{$fg[blue]%}%~%{$reset_color%})
%# '

# Set vi as the editor
bindkey -v

# Source the functions directory
if [ -d ~/.functions ]; then
    for F in ~/.functions/*; do
        source $F
    done
fi

# Paths
[[ -d "/opt/homebrew/bin" ]] && export PATH=/opt/homebrew/bin:$PATH


