#!/bin/bash


  



# Thêm Prometheus community repository
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

# Install với values-central.yaml của bạn
helm upgrade --install monitoring prometheus-community/kube-prometheus-stack `
  -n prometheus `
  --create-namespace `
  -f values-central.yaml


#kubectl apply -f prometheus-nodeport.yaml
