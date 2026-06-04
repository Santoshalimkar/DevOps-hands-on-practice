#!/bin/bash

kubectl get pods -A

echo "================================"

kubectl get svc -A

echo "================================"

kubectl get ingress -A

echo "================================"

kubectl get gateways -A

echo "================================"

kubectl get virtualservices -A