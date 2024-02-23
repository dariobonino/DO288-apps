#!/bin/bash

mkdir -p ~/test/deleteme
cd ~/test/deleteme
git clone https://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@github.com/dariobonino/DO288-apps
cd ~/test/deleteme/DO288-apps
git checkout dario
git pull
git checkout -b temporary
git push -u origin temporary
cd ~/test
rm -Rf ~/test/deleteme

lab expose-registry start
source /usr/local/etc/ocp4.config

## podman pull registry.access.redhat.com/rhscl/httpd-24-rhel7
oc login -u developer -p developer https://api.ocp4.example.com:6443/

