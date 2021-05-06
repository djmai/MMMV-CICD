#!/bin/bash

echo '=========================================================='
echo '===   MTIE MIGUEL MANUEL MARTINEZ VAZQUEZ              ==='
echo '=========================================================='

echo '=========================================================='
echo '=== PASO 1: CONFIGURACION DE VARAIBLE VM.MAX_MAP_COUNT ==='
echo '=========================================================='
sudo sysctl -w vm.max_map_count = 262144

echo '=========================================================='
echo '===       PASO 2: INSTALACION DE DOCKER-COMPOSE        ==='
echo '=========================================================='
sudo curl -L https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

echo '=========================================================='
echo '===           PASO 3: FIN DEL SCRIPT CONFIG            ==='
echo '=========================================================='

echo '=========================================================='
echo '===          PASO 4: LIMPIADNO REPO LOCAL              ==='
echo '=========================================================='
if [ -d ~/MMMV-CICD/ ]; then
    sudo rm -R MMMV-CICD
else
    echo ''
    echo 'No existe el repositorio antiguo'
fi

echo '=========================================================='
echo '===           PASO 5: CONFIGURANCDO GIT                ==='
echo '=========================================================='
alias git="docker run -ti --rm -v $(pwd):/git bwits/docker-git-alpine"
git

echo '=========================================================='
echo '===           PASO 6: CLONANDO REPO                    ==='
echo '=========================================================='
git clone https://github.com/djmai/MMMV-CICD.git
cd MMMV-CICD

echo '=========================================================='
echo '===           PASO 7: LIMPIANDO DATA                   ==='
echo '=========================================================='
if [ -d ~/volumes/ ]; then
    sudo rm -R volumes
else
    echo ''
    echo 'No existe la carpeta volumes antigua'
fi

if [ -d ~/data/ ]; then
    sudo rm -R data
else
    echo ''
    echo 'No existe la carpeta volumes data'
fi

echo '=========================================================='
echo '===           PASO 8: COPIANDO DATA                    ==='
echo '=========================================================='
if [ -d ./volumes/ ]; then
    sudo cp -R volumes/ ~/
    sudo mkdir -p ~/volumes/elk-stack/elasticsearch
    cd ~/volumes/elk-stack/
    sudo chmod 777 elasticsearch/
    cd ~/MMMV-CICD
else
    echo ''
    echo 'No existe la carpeta volumes'
fi

if [ -d ./data/ ]; then
    sudo cp -R data/ ~/
else
    echo ''
    echo 'No existe la carpeta data'
fi

echo '=========================================================='
echo '===          PASO 7: DESPLEGANDO CONTENEDORES          ==='
echo '=========================================================='
sudo docker-compose up --build -d
