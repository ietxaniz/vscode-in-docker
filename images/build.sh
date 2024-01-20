#/bin/bash
docker build -t inigoetxaniz/vscode-base:1.0 ./base
docker build -t inigoetxaniz/vscode-ext-devel:1.0 ./ext-devel
docker build -t inigoetxaniz/vscode-go:1.0 ./go

docker tag inigoetxaniz/vscode-base:1.0 inigoetxaniz/vscode-base:latest
docker tag inigoetxaniz/vscode-ext-devel:1.0 inigoetxaniz/vscode-ext-devel:latest
docker tag inigoetxaniz/vscode-go:1.0 inigoetxaniz/vscode-go:latest

docker push inigoetxaniz/vscode-base:1.0
docker push inigoetxaniz/vscode-base:latest
docker push inigoetxaniz/vscode-ext-devel:1.0
docker push inigoetxaniz/vscode-ext-devel:latest
docker push inigoetxaniz/vscode-go:1.0
docker push inigoetxaniz/vscode-go:latest
