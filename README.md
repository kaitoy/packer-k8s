# Packer template to setup Kubernetes Cluster on VirtualBox

## Prerequisites

* Packer 1.2.x installed
* Ansible 2.5.x installed
* VirtualBox installed

## How to use

1. Clone this project

    ```sh
    $ su -
    # git clone --recursive https://github.com/kaitoy/packer-k8s.git
    # cd ansible-k8s
    ```

2. Modify variables.json, extra_vars.yml, ansible_inventory, and http/ks.cfg.

3. Run a build

    ```sh
    # ./build_vb.sh
    ```

The artifacts will be generated in `builds` dir.
