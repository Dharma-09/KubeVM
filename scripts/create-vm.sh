#!/bin/bash

# Variables
VM_NAME="linux-desktop"
NAMESPACE="default" # Change this if your VMs are in a different namespace
CPU_CORES=2
MEMORY="4Gi"
DISK_SIZE="10Gi"
IMAGE="quay.io/containerdisks/fedora:latest"  # Replace with the desired VM image

# YAML manifest for the VM
cat <<EOF | kubectl apply -f -
apiVersion: kubevirt.io/v1
kind: VirtualMachine
metadata:
  name: $VM_NAME
  namespace: $NAMESPACE
spec:
  running: true
  template:
    spec:
      domain:
        cpu:
          cores: $CPU_CORES
        resources:
          requests:
            memory: $MEMORY
        devices:
          disks:
          - name: containerdisk
            disk:
              bus: virtio
          - name: cloudinitdisk
            disk:
              bus: virtio
      volumes:
      - name: containerdisk
        containerDisk:
          image: $IMAGE
      - name: cloudinitdisk
        cloudInitNoCloud:
          userData: |
            #cloud-config
            password: fedora
            chpasswd: { expire: False }
EOF

echo "Virtual Machine '$VM_NAME' created in namespace '$NAMESPACE'."
