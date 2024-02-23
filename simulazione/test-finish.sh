#!/bin/bash

mkdir -p ~/test/deleteme
cd ~/test/deleteme
git clone https://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@github.com/dariobonino/DO288-apps
cd ~/test/deleteme/DO288-apps
git checkout dario
git pull
git branch -d temporary
git push -d origin temporary
cd ~
rm -Rf ~/test/deleteme

podman kill $(podman ps -q)
podman rm $(podman ps -aq)
podman image prune -af
podman logout --all

oc delete project --all
oc logout

lab expose-registry finish
