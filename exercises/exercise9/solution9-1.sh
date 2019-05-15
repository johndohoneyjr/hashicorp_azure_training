#! /bin/bash

vault secrets enable -version=2 kv 
vault kv put kv/my-secret my-value=s3cr3t 
vault kv get kv/my-secret 
vault kv put kv/my-secret my-value=new-s3cr3t 
vault kv get kv/my-secret 
vault kv get -version=1 kv/my-secret

