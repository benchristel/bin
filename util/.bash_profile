# Don't check mail when opening terminal.
unset MAILCHECK

# Set up shell prompt
# Set SCM_CHECK to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true
source prompt.sh

# General Abbreviations
alias ll='ls -laG'

# del is safer rm. It moves files to tmp/.
# It appends timestamps to prevent collisions if other
# files with the same name are del'ed later.
function del {
  while [ -n "$1" ]; do
    mv "$1" "/tmp/$(basename "$1")-$(date +%H.%M.%S)"
    shift
  done
}

# Git
# See also: .gitconfig
alias g='git'
alias gs='git status'

# Journaling
alias day="vim ~/days/\$(date +%Y-%m-%d)"

# Games
alias heroes4="wine ~/.wine/drive_c/GOG\ Games/Heroes\ of\ Might\ and\ Magic\ 4\ Complete/heroes4.exe"
alias camp="wine ~/.wine/drive_c/GOG\ Games/Heroes\ of\ Might\ and\ Magic\ 4\ Complete/campaign_editor.exe"
alias steam="wine ~/.wine/drive_c/Program\ Files/Steam/Steam.exe -no-cef-sandbox"
alias aoe="wine ~/.wine/drive_c/Program\ Files/Steam/steamapps/common/Age2HD/AoK\ HD.exe"
alias minetest="/usr/local/Cellar/minetest/5.0.1/minetest.app/Contents/MacOS/minetest"

# see: https://github.com/benchristel/a
alias a="cd ~/a"
alias b="cd ~/b"

export EDITOR=vi

# Ruby stuff
eval "$(rbenv init -)"
alias be="bundle exec"

# Go stuff
export GOPATH='/Users/Ben/workspace/go'
export PATH="$PATH:$GOPATH/bin"

# Add global nodejs executables to the PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# Add Rust executables to the PATH
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/bin:$PATH"

# salt for login
export SALT=ab3eff81644c955ff5c37f56924aba22752c10ad3782b9c0c2330181c7173ef68ddde1106c52a7fde922c78e2ad35d344b44057e058757fc2782cd0af29efa6c

CLEAR_SCREEN=on
function before_command() {
  [ "$CLEAR_SCREEN" = on ] || return
  case "$BASH_COMMAND" in
  $PROMPT_COMMAND)
    ;;
  *)
    # delete the prompt
    printf "\033[1A\033[K"
    clear
    # recreate it
    echo "$(tput setaf 5)> $BASH_COMMAND$(tput sgr0)"
  esac
}

function cl() {
  CLEAR_SCREEN="$1"
}

trap before_command DEBUG
