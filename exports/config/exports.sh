export PATH=$PATH:~/.local/bin
export PATH=/opt/cuda/bin:$PATH
export LD_LIBRARY_PATH=/opt/cuda/lib64:$LD_LIBRARY_PATH

export PATH="/usr/local/bin:$PATH"
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export GIT_CONFIG=~/Desktop/GitHub/braindotdev/git/config/.gitconfig