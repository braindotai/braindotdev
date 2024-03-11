#!/bin/bash

command_exists() {
    command -v "$1" 
}

########## DOCKER SETUP ##########
echo "                             ::  
                            :*+.      
               ..:-.:::     -**:.-=++-
            =*****#---:      +*=***+- 
            =+====-.::.      .***=:   
        -++*+***=:-.--::-:   .*=.     
        :++++***=:-.:-::-: .-**.      
 =++++++=====----:-:----==+****.      
:******************************.      
:******************************.      
.*************+##..+***********       
 +************=@%  :**********=       
 :++*****++++*++#*=+*********+        
  +*+++++**#%#**++**********+.        
  .#@@%%@@@@@%************+-          
    =#@@@%%%%%#*********+-            
      -+#%%%@@@%#**++=:.              
         .:-=====:.                   "

if ! command_exists docker; then
    echo "🐳 Configuring docker  🐳"
    paru -Sy --noconfirm docker > /dev/null 2>&1
    paru -Sy --noconfirm docker-compose > /dev/null 2>&1
    # sudo cp ~/Desktop/GitHub/braindotdev/docker/config/daemon.json /etc/docker/daemon.json
    # https://docs.docker.com/reference/cli/dockerd/#daemon-configuration-file
fi

########## STOW SETUP ##########
ORIGINAL_DIR=$(pwd)
sudo mkdir -p /etc/docker/
cd ~/Desktop/GitHub/braindotdev/docker/config/
sudo stow -vt /etc/docker/ .
cd "$ORIGINAL_DIR"
