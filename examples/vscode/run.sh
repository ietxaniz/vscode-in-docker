#!/bin/bash
XAUTH=${XAUTHORITY:-$HOME/.Xauthority}
DOCKER_XAUTHORITY=${XAUTH}.docker
cp --preserve=all $XAUTH $DOCKER_XAUTHORITY
xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $DOCKER_XAUTHORITY nmerge -

docker run --rm -d \
    --name vscode-base-1 \
    -u $(id -u):$(id -g) \
    -v /etc/passwd:/etc/passwd:ro \
    -e DISPLAY=unix$DISPLAY \
    -e NO_AT_BRIDGE=1 \
    -e GTK_THEME=Adwaita \
    -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
    -e XAUTHORITY=$DOCKER_XAUTHORITY \
    -v $DOCKER_XAUTHORITY:$DOCKER_XAUTHORITY:ro \
    -v ./home:/home/vscodeuser \
    -v ./Documents:/home/vscodeuser/Documents \
    -v ./home:/home/$USER \
    -v ./Documents:/home/$USER/Documents \
    -e HOME=/home/vscodeuser \
    inigoetxaniz/vscode-base:latest 
