#!/bin/bash

curl -L https://istio.io/downloadIstio | sh -

cd istio-* || exit

export PATH=$PWD/bin:$PATH

istioctl install \
--set profile=demo \
-y

kubectl get pods -n istio-system