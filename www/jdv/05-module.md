---
layout: "module"
subtitle: "Start & Configure Demo Database"
---

## Demo Database

In order to use the labs we need to prepare one database.

Out of the box we provide H2 embedded databases for your convinience. We provide some database SQL scripts as well for PostgreSQL, MariaDB and MySQL to load initial data into the database of your choice. In the next paragraph we will describe how to instantiate the RDBMS container and load the demo data into it.

### Setup MySQL

After starting the MySQL container, access the RDBMS via any `mysql` utility and perform the following commands.

**[NOTE]** The `mysql` utility is already installed on your host system if we provided you a lab environment for this workshop.

1. Login to MySQL.

```
mysql -u root -p -h 127.0.0.1 --port=#
```

2. Go to the home (~) directory and load the `finanacials.sql` database.

3. If "Step 2" is successful the MySQL environment contains all necessary databases.

The labs will use the following databases:

- apaccustomer
- brokerinfo
- eucustomers
- products
- uscustomers
