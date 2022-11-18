# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION


# Personal Configuration

## Default apps
export EDITOR=nvim

## Bash completion
[ -r /usr/share/bash-completion/bash_completion ] && . /usr/share/bash-completion/bash_completion # If bash_completion is readable, read the file
xhost +local:root > /dev/null 2>&1 # Get rid of command verbosity

## Starship
eval "$(starship init bash)"

## Changing "ls" to "exa"
alias ls='exa -al --group-directories-first' # my preferred listing
alias la='exa -a --group-directories-first'  # all files and dirs
alias ll='exa -l --group-directories-first'  # long format
alias lt='exa -aT --group-directories-first' # tree listing
alias l.='exa -a | grep -E "^\."'

## Aliases
### Tools
alias su='sudo -E -s'
alias open='xdg-open'
alias count='texcount */*.tex'
alias fd='cd "$(find -type d | fzf --preview '\''tree -C -d -L 1 {}'\'' --height 96% --margin 10,5,10,5 --padding 5,10,5,10 | head -n 10)"'
alias ff='xdg-open "$(fzf)"'
alias vim='nvim'
### Directories
alias shared='cd /run/media/balrrach/SHARED'
alias tfg='cd ~/repos/tfg'
alias repos='cd ~/repos'
### Files
#alias cp="cp -i"                          # confirm before overwriting something
#alias df='df -h'                          # human-readable sizes
#alias free='free -m'                      # show sizes in MB

## Add bin to path
export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export JDTLS_HOME="$HOME/.local/opt/jdtls-launcher/jdtls"

## No repeated commads in bash history
export HISTCONTROL=ignoreboth:erasedups

## Open man pages with nvim
export MANPAGER="nvim +Man!"

## Mail
# alias mail="nvim -c Himalaya"

## Archive Extractor. Usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

## Get faster mirrors
alias mirror="sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

