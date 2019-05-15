#! /bin/bash

vault secrets enable database 
vault write database/config/exampledb \ 
  plugin_name=mysql-database-plugin   \ 
  allowed_roles="my-role"             \ 
  connection_url="{{username}}:{{password}}@tcp(220c097a-mysql.mysql.database.azure.com:3306)/" \ 
  username="sqladmin@220c097a-mysql" \ 
  password="3huLS1K-TZ9aWEjUJqdZ6IWMy-Gfn1gOP4TRX82J9zA" 

vault write database/roles/my-role \ 
  db_name=exampledb \ 
  creation_statements="CREATE USER '{{name}}'@'%' IDENTIFIED BY '{{password}}';GRANT SELECT ON *.* TO '{{name}}'@'%';" \ 
  default_ttl="5m" \ 
  max_ttl="24h"
