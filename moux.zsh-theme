# vim: set ft=zsh:
PROMPT='%{$fg[yellow]%}λ %m %{$fg[green]%}%~ %{$fg[yellow]%}→ %{$reset_color%}'

if [[ -n "$IN_NIX_SHELL" ]]; then
  if [[ -n $NIX_SHELL_PACKAGES ]]; then
    local package_names=""
    local packages=($NIX_SHELL_PACKAGES)
    for package in $packages; do
      package_names+=" ${package##*.}"
    done
    PROMPT+='%{$fg[yellow]%}{$package_names} %{$reset_color%}'
  elif [[ -n $name ]]; then
    local cleanName=${name#interactive-}
    cleanName=${cleanName%-environment}
    PROMPT+='%{$fg[blue]%}$cleanName %{$reset_color%}'
  else # This case is only reached if the nix-shell plugin isn't installed or failed in some way
    PROMPT+='%{$fg[blue]%}nix-shell {} %{$reset_color%}'
  fi
fi

# Counting on git-prompt to display git information on the RPROMPT
# We still want to customize a little bit the prefix to fit the theme
ZSH_THEME_GIT_PROMPT_PREFIX="λ %{$fg[blue]%}git %{$fg[red]%}"
