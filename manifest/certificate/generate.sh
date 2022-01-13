#!/bin/sh

# generate by
# https://github.com/nicholasjackson/mtls-go-example

kubectl create \
  -n istio-system secret tls istio-ingressgateway-certs \
  --key 3_application/private/api.cluster-sample.com.key.pem \
  --cert 3_application/certs/api.cluster-sample.com.cert.pem
