export SCRIPT=$HOME/coding/config_files/scripts
export ZSHDIR=$HOME/coding/config_files/dotfiles/rc/zsh
export XDG_CONFIG_HOME=$HOME/.config

alias gaming="$SCRIPT/gaming" 
unsetopt BEEP

ss(){
$SCRIPT/screen_switcher $1
}

fastfetch

ai(){
$SCRIPT/appimage_updater $1
}
