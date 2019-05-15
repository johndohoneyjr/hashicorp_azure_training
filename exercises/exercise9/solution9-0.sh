#! /bin/bash

vault auth enable azure 

vault write auth/azure/config \ 
  tenant_id=$ARM_TENANT_ID \ 
  resource=https://management.azure.com \ 
  client_id=$ARM_CLIENT_ID \ 
  client_secret=$ARM_CLIENT_SECRET


