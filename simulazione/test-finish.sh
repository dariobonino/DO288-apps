#!/bin/bash


podman kill $(podman ps -q)
podman rm $(podman ps -aq)
podman image prune -af
podman logout --all

oc delete project --all
oc logout

lab expose-registry finish
