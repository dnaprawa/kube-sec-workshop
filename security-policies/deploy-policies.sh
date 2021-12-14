#!/bin/bash

kubectl apply -f ./config.yaml

kubectl apply -f ./privileged/template.yaml
kubectl apply -f ./allowprivilegeescalations/template.yaml
kubectl apply -f ./runasroot/template.yaml
kubectl apply -f ./runasgroup/template.yaml
kubectl apply -f ./fsgroup/template.yaml
kubectl apply -f ./automountserviceaccounttoken/template.yaml
kubectl apply -f ./service_type/template.yaml

sleep 5

kubectl apply -f ./privileged/constraint.yaml
sleep 2

kubectl apply -f ./allowprivilegeescalations/constraint.yaml
sleep 2

kubectl apply -f ./runasroot/constraint.yaml
sleep 2

kubectl apply -f ./runasgroup/constraint.yaml
sleep 2

kubectl apply -f ./fsgroup/constraint.yaml
sleep 2

kubectl apply -f ./automountserviceaccounttoken/constraint.yaml
sleep 2

kubectl apply -f ./service_type/constraint.yaml

