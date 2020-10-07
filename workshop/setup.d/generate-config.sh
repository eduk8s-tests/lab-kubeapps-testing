#!/bin/bash

KUBEAPPS_TOKEN=`kubectl get secret $(kubectl get serviceaccount kubeapps-user -o jsonpath='{.secrets[].name}' -n ${SESSION_NAMESPACE}) -o jsonpath='{.data.token}' -n ${SESSION_NAMESPACE} | base64 --decode`

export KUBEAPPS_TOKEN

envsubst < $WORKSHOP_DIR/config.js.in > $WORKSHOP_DIR/config.js
