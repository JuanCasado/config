export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$ZSH/custom

CASE_SENSITIVE=false
HYPHEN_INSENSITIVE=false
COMPLETION_WAITING_DOTS=true
ZSH_TMUX_AUTOSTART_ONCE=true
ZSH_TMUX_AUTOCONNECT=true
ZSH_TMUX_AUTOQUIT=true

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 14

DISABLE_UNTRACKED_FILES_DIRTY=true
HIST_STAMPS="dd/mm/yyyy HH:MM:SS"  # see 'man strftime' for details.

ZSH_THEME="af-magic"
plugins=(
  autojump
  bun
  celery
  charm
  colored-man-pages
  colorize
  compleat
  command-not-found
  copybuffer
  copyfile
  copypath
  cp
  debian
  dircycle
  docker
  docker-compose
  emoji
  encode64
  extract
  fancy-ctrl-z
  fasd
  fd
  fzf
  gh
  git
  gitfast
  gitignore
  golang
  gpg-agent
  zsh-history-substring-search
  httpie
)

ZSH_COLORIZE_STYLE="colorful"

source $ZSH/oh-my-zsh.sh

export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export EDITOR='nvim'

alias vi=nvim
alias vim=nvim

[ -f ~/.profile ] && . ~/.profile

