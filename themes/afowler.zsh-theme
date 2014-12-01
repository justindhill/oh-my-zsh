if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="magenta"; fi

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%n@%m %{${fg_bold[magenta]}%}:: %{$reset_color%}%{${fg[white]}%}%3~ $(git_prompt_info)%{${fg_bold[$CARETCOLOR]}%}»%{${reset_color}%} '

RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"
