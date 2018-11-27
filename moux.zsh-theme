# vim: set ft=zsh:
PROMPT='%{$fg[yellow]%}λ %m %{$fg[green]%}%~ %{$fg[yellow]%}→ %{$reset_color%}'

# Counting on git-prompt to display git information on the RPROMPT
# We still want to customize a little bit the prefix to fit the theme
ZSH_THEME_GIT_PROMPT_PREFIX="λ %{$fg[blue]%}git %{$fg[red]%}"
