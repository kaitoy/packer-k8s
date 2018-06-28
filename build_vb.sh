#!/bin/sh

set -ue

export CHECKPOINT_DISABLE=1
packer build -var-file=variables.json k8s_single_node_cluster_vb.json
