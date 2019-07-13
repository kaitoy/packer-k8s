#!/bin/sh

set -ue

export CHECKPOINT_DISABLE=1
/c/Users/kaitoy/Desktop/bin/packer.exe build -var-file=variables.json k8s_single_node_cluster_null.json
