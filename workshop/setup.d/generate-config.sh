#!/bin/bash

envsubst < $HOME/exercises/dex-values.yaml.in > $HOME/exercises/dex-values.yaml
envsubst < $HOME/exercises/kubeapps-auth-proxy-values.yaml.in > $HOME/exercises/kubeapps-auth-proxy-values.yaml
