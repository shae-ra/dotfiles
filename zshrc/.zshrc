# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
    source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
    #source /usr/share/zsh/manjaro-zsh-prompt
#fi

# Use oh-my-posh config
if type oh-my-posh &> /dev/null; then
    # GOT TO DECIDE BETWEEN huvix and hul10
    # eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/hul10.omp.json')"
    eval "$(oh-my-posh init zsh --config '~/posh-themes/hul10.omp.json')"
fi

# autostart ssh agent
eval $(ssh-agent)

. "$HOME/.cargo/env"
