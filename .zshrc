if [ -f ~/.zsh_aliases ]
then
    source ~/.zsh_aliases
fi

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

autoload -Uz compinit
compinit -u

autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '*%b '

setopt PROMPT_SUBST
PROMPT='%F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ '
RPROMPT='[%T]'

bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "^[[3~" delete-char
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
