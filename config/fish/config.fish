# Path to Oh My Fish install.
set -q XDG_DATA_HOME
set -gx OMF_PATH "$HOME/dotfiles/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/home/anthony/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish
