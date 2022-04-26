#!/bin/sh
# create k8s cluster
# https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/
kubeadm init --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address=192.167.33.100
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
export KUBECONFIG=/etc/kubernetes/admin.conf

# Installing a Pod network add-on
# https://projectcalico.docs.tigera.io/getting-started/kubernetes/quickstart
kubectl create -f https://projectcalico.docs.tigera.io/manifests/tigera-operator.yaml
kubectl create -f https://projectcalico.docs.tigera.io/manifests/custom-resources.yaml

kubectl get nodes