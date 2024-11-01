#!/bin/bash

# Variables
VM_NAME="linux-desktop"
NAMESPACE="default"  # Change this to the namespace of your VM

# Delete the VM
kubectl delete vm $VM_NAME -n $NAMESPACE

echo "Virtual Machine '$VM_NAME' deleted from namespace '$NAMESPACE'."
