#!/bin/bash

kubectl create namespace bookinfo --dry-run=client -o yaml | kubectl apply -f -

kubectl label namespace bookinfo istio-injection=enabled --overwrite

kubectl apply \
-f samples/bookinfo/platform/kube/bookinfo.yaml \
-n bookinfo

kubectl apply \
-f samples/bookinfo/networking/bookinfo-gateway.yaml \
-n bookinfo

kubectl get pods -n bookinfo