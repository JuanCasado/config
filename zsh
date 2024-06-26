#!/bin/zsh

export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/usr/lib/cargo/bin
ZSH_CUSTOM=$ZSH/custom

CASE_SENSITIVE=false
HYPHEN_INSENSITIVE=false
COMPLETION_WAITING_DOTS=true
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOSTART_ONCE=true
ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_DETACHED=false
ZSH_TMUX_AUTOQUIT=true
ZSH_TMUX_UNICODE=true
ZSH_PYENV_QUIET=false

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 14

DISABLE_UNTRACKED_FILES_DIRTY=true
HIST_STAMPS="dd/mm/yyyy HH:MM:SS"  # see 'man strftime' for details.

PROJECT_PATHS=(~/code ~)

ZSH_THEME="powerlevel10k/powerlevel10k"
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
  httpie
  isodate
  jsontools
  jump
  last-working-dir
  man
  mvn
  node
  npm
  nvm
  pep8
  percol
  perms
  pip
  pipenv
  pj
  pyenv
  pylint
  python
  qrcode
  react-native
  ripgrep
  rsync
  rust
  scala
  scd
  sprunge
  ssh-agent
  stack
  supervisor
  term_tab
  thefuck
  timer
  tmux
  universalarchive
  urltools
  vi-mode
  wd
  yarn
  z
  zoxide
  zsh-autosuggestions
  zsh-interactive-cd
  zsh-navigation-tools
  zsh-history-substring-search
)

ZSH_COLORIZE_STYLE="colorful"

export MANPATH="/usr/local/man:$MANPATH"
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LANGUAGE="en_US.UTF-8"
export TZ="Europe/Madrid"
export EDITOR='nvim'

source $ZSH/oh-my-zsh.sh
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  . "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

alias vi=nvim
alias vim=nvim

[[ -f ~/.profile ]] && . ~/.profile
[[ -f ~/.p10k.zsh ]] && . ~/.p10k.zsh # To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
