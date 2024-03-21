export PATH=$PATH:~/.local/bin

export PATH=/opt/cuda/bin:$PATH
export CUDNN_PATH=$(dirname $(python3.9 -c "import nvidia.cudnn;print(nvidia.cudnn.__file__)"))
export LD_LIBRARY_PATH="$CUDNN_PATH/lib":"/usr/local/cuda/lib64"
export LD_LIBRARY_PATH=/opt/cuda/lib64:$LD_LIBRARY_PATH

export PATH="/usr/local/bin:$PATH"
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export GIT_CONFIG=~/Desktop/GitHub/braindotdev/git/config/.gitconfig
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:/home/hyperion/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"