
Once connected

1. Look up Vm to find Resource Group
2. Select MSQL
3. Connection Security -- Allow access to Azure Services
4. Start CLI
5. login into mysql
mysql -h 220c097a-mysql.mysql.database.azure.com -u sqladmin@220c097a-mysql -p3huLS1K-TZ9aWEjUJqdZ6IWMy-Gfn1gOP4TRX82J9zA
6. list users
SELECT User FROM mysql.user;
