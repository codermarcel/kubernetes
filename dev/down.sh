#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

#Deployments
kubectl delete -f ${DIR}/deployments/ingress-nginx.yaml
kubectl delete -f ${DIR}/deployments/nodejs.yaml
kubectl delete -f ${DIR}/deployments/go.yaml
kubectl delete -f ${DIR}/deployments/php.yaml
kubectl delete -f ${DIR}/deployments/php-nginx.yaml
kubectl delete -f ${DIR}/deployments/mysql.yaml

#Secrets
kubectl delete -f ${DIR}/secrets/secrets.yaml
kubectl delete -f ${DIR}/secrets/registry.yaml
kubectl delete configmap nginx
