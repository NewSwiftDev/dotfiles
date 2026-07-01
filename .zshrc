# THIS FILE IS UNDER VERSION CONTROL.  MAKE CHANGES IN YOUR REPO!!!!! #
#*********************************************************************#

# OS Specific Config
case "$OSTYPE" in
  darwin*)
    export SYSTEM_ICON=""
  *)
    export SYSTEM_ICON="🐧"
esac

# Setup Prompt
autoload -U colors && colors
setopt PROMPT_SUBST
PS1='$(s2aprompt)$(git_prompt)(%{$fg[green]%}$SYSTEM_ICON %m: %{$reset_color%}%{$fg[blue]%}%~%{$reset_color%})
%# '

# Set vi as the editor
bindkey -v

# Source the functions directory
if [ -d ~/.functions ]; then
    for F in ~/.functions/*; do
        source $F
    done
fi


