#!/bin/sh

set -ue

export PACKER_KEY_INTERVAL=300ms
export CHECKPOINT_DISABLE=1
rm -rf builds/ ~/.ssh/known_hosts /tmp/ansible/
packer.exe build -var-file=variables.json k8s_single_node_cluster_esx.json
