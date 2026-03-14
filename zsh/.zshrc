# Prompt theme
setopt PROMPT_SUBST

function _git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return
  echo " %B%F{magenta} $branch%f%b"
}

function _git_status() {
  git rev-parse --is-inside-work-tree &>/dev/null || return

  local git_status
  git_status=$(git status --porcelain 2>/dev/null)

  local untracked=$(echo "$git_status" | grep -c '^\?\?')
  local modified=$(echo "$git_status"  | grep -c '^.M\|^M.')
  local staged=$(echo "$git_status"    | grep -c '^[MARCDT]')
  local deleted=$(echo "$git_status"   | grep -c '^.D\|^D.')

  local ahead behind
  read ahead behind <<< $(git rev-list --count --left-right @{upstream}...HEAD 2>/dev/null | awk '{print $2, $1}')

  local status_str=""
  [[ $modified  -gt 0 ]] && status_str+=" ${modified}!"
  [[ $staged    -gt 0 ]] && status_str+=" ${staged}+"
  [[ $untracked -gt 0 ]] && status_str+=" ${untracked}?"
  [[ $deleted   -gt 0 ]] && status_str+=" ${deleted}✘"
  [[ $ahead     -gt 0 ]] && status_str+=" ${ahead}⇡"
  [[ $behind    -gt 0 ]] && status_str+=" ${behind}⇣"

  [[ -n $status_str ]] && echo " %B%F{red}[${status_str} ]%f%b"
}

PROMPT='
%B%F{blue}%~%f%b$(_git_branch)$(_git_status)
%B%F{blue}[%f%b%B%F{white}%n%f%b%B%F{yellow}@%f%b%B%F{white}%m%f%b%B%F{blue}]%f%b %(?.%B%F{green} ➜%f%b.%B%F{red} ➜%f%b) '


autoload -U compinit; compinit

## Changing "ls" to "eza"
alias l='eza -l --group-directories-first'  # long format
alias ll='eza -al --group-directories-first' # my preferred listing
alias la='eza -a --group-directories-first'  # all files and dirs
alias lt='eza -aT --group-directories-first' # tree listing
alias l.='eza -a | grep -E "^\."'

# TERMINAL
export TERMINAL="kitty"

# RBENV
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
source "$(brew --prefix nvm)/nvm.sh"

# ANDROID EMULATOR
export ANDROID_HOME=$HOME/Library/Android/sdk && export PATH=$PATH:$ANDROID_HOME/emulator && export PATH=$PATH:$ANDROID_HOME/platform-tools

# SDKMAN: THIS MUST BE AT THE END OF THE FILE TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# Miktex executables
export "PATH=$HOME/bin:$PATH"
