#!/bin/bash

echo '=========================================================='
echo '===   MTIE MIGUEL MANUEL MARTINEZ VAZQUEZ              ==='
echo '=========================================================='

echo '=========================================================='
echo '===        PASO 0: LIMPIADNO CONTENEDORES              ==='
echo '=========================================================='
docker rm -f $(docker ps -qa)

echo '=========================================================='
echo '===          PASO 1: LIMPIADNO REPO LOCAL              ==='
echo '=========================================================='
if [ -d ~/MMMV-CICD/ ]; then
    echo 'sudo rm -R MMMV-CICD'
    sudo rm -R MMMV-CICD
else
    echo 'No existe el repositorio antiguo'
fi

echo '=========================================================='
echo '===           PASO 2: INSTALANDO GIT                   ==='
echo '=========================================================='
alias git="docker run -ti --rm -v $(pwd):/git bwits/docker-git-alpine"

echo '=========================================================='
echo '===           PASO 3: CLONANDO REPO                    ==='
echo '=========================================================='
git clone https://github.com/djmai/MMMV-CICD.git
cd MMMV-CICD

echo '=========================================================='
echo '===           PASO 4: COPIANDO DATA                    ==='
echo '=========================================================='
if [ -d ./volumes/ ]; then
    sudo cp -U volumes/ ~/
    sudo mkdir -p ~/volumes/elk-stack/elasticsearch
    cd ~/volumes/elk-stack/
    sudo chmod 777 elasticsearch/
    cd ~/MMMV-CICD
else
    echo 'No existe la carpeta volumes'
fi

if [ -d ./data/ ]; then
    echo 'sudo cp -R data/ ~/'
    sudo cp -U data/ ~/
else
    echo 'No existe la carpeta data'
fi

echo '=========================================================='
echo '===          PASO 5: DESPLEGANDO CONTENEDORES          ==='
echo '=========================================================='
echo 'sudo docker-compose up --build -d'
sudo docker-compose up --build -d
