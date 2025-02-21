## KubeVm: Remote Linux Desktop as a Service

KubeVm is an advanced platform that enables seamless management of Virtual Machines (VMs) on Kubernetes using KubeVirt. With built-in integration for Apache Guacamole, KubeVm provides browser-based remote desktop access for Linux VMs, empowering users with modern capabilities to manage, monitor, and interact with virtualized workloads.

## 📦 Getting Started

### Prerequisites

Docker: For containerized development.

Kubernetes Cluster: Required for KubeVirt.

Go and Node.js: For backend and frontend.

Guacamole Server: Installed and configured..

Installation Steps

Clone the Repository:

```shell
git clone https://github.com/Dharma-09/KubeVM.git
cd kubevm
```

Deploy KubeVirt on Kubernetes:
```shell
kubectl apply -f https://github.com/kubevirt/kubevirt/releases/download/v0.x.x/kubevirt-operator.yaml
kubectl apply -f https://github.com/kubevirt/kubevirt/releases/download/v0.x.x/kubevirt-cr.yaml
```
Set Up Guacamole:

Deploy Guacamole Server and link it to the project.

Run the Backend:

```shell
cd backend
go run main.go
```

Start the Frontend:
```shell
cd frontend
npm install
npm start
```


## 📊 Monitoring and Logging

Prometheus: Collect metrics from Kubernetes and VM workloads.

Grafana: Visualize performance and user session data.

ELK Stack: Centralized logging and analysis.



Scalable desktop-as-a-service (DaaS) solutions.

Secure remote access for enterprise teams.
