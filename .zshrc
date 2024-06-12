# Ctrl+Dでログアウトしてしまうことを防ぐ
setopt IGNOREEOF

# 日本語を使用
export LANG=ja_JP.UTF-8

# パスを追加したい場合
export PATH="$HOME/bin:$PATH"

# 色を使用
autoload -Uz colors
colors

# プロンプト
# 1行表示
# PROMPT="%~ %# "
PROMPT="%{${fg[green]}%}[%n@%m]%{${reset_color}%} %~%# "

# 補完
# 補完機能を有効にする
autoload -Uz compinit
compinit

# 補完で小文字でも大文字にマッチさせる
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ../ の後は今いるディレクトリを補完しない
zstyle ':completion:*' ignore-parents parent pwd ..

# sudo の後ろでコマンド名を補完する
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                   /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

# ps コマンドのプロセス名補完
zstyle ':completion:*:processes' command 'ps x -o pid,s,args'

# 他のターミナルとヒストリーを共有
setopt share_history

# emacsキーバインド
bindkey -e

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# ディレクトリ名だけでcdする
setopt auto_cd

# コマンドミスを修正
setopt correct

#エイリアス関係↓
alias la='ls -la'
alias ll='ls -l'
alias sudo='sudo '
alias vz='vim ~/.zshrc'
alias de='cd ~/Desktop'
alias rm='rm -i'
alias mv='mv -i'
alias vr='vim -R'

alias python=python3
alias -s py=python3

alias -g G='| grep'

chpwd() { ls }
