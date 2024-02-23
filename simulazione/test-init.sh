#!/bin/bash

lab expose-registry start
source /usr/local/etc/ocp4.config

## podman pull registry.access.redhat.com/rhscl/httpd-24-rhel7

oc login -u developer -p developer https://api.ocp4.example.com:6443/

