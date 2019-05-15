#! /bin/bash

vault secrets enable -version2 kv 
vault kv enable-versioning secret/ 
vault kv put secret/my-secret my-value=s3cr3t 
vault kv get secret/my-secret 
vault kv put secret/my-secret my-value=new-s3cr3t 
vault kv get secret/my-secret 
vault kv get -verison=1 secret/my-secret

