#!/usr/bin/env bash

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

cp ${DIR}/registry-example.yaml ${DIR}/secrets/registry.yaml
cp ${DIR}/secrets-example.yaml ${DIR}/secrets/secrets.yaml
