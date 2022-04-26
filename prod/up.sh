#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#Secrets
kubectl create -f ${DIR}/secrets/registry.yaml
kubectl create -f ${DIR}/secrets/secrets.yaml
kubectl create configmap nginx --from-file ${DIR}/configmaps/server.conf

#Deployments
kubectl create -f ${DIR}/deployments/mysql.yaml
kubectl create -f ${DIR}/deployments/nodejs.yaml
kubectl create -f ${DIR}/deployments/go.yaml
kubectl create -f ${DIR}/deployments/php.yaml
kubectl create -f ${DIR}/deployments/php-nginx.yaml
kubectl create -f ${DIR}/deployments/ingress-nginx.yaml
