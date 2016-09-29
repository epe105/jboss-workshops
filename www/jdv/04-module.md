---
layout: "module"
subtitle: "Setup Demo Database"
---

In order to use the labs we need to prepare one database.

Out of the box we provide H2 embedded databases for your convinience. We provide some database SQL scripts as well for PostgreSQL, MariaDB and MySQL to load initial data into the database of your choice.

In the next paragraph we will describe how to instantiate the RDBMS container and load the demo data into it.

## Setup PostgreSQL

The easiest way to install PostgreSQL is to use the pre-built binary packages which are available for a number of different operating systems. See [documentation](http://bit.ly/2cD7Pen) for more information and downloads.

Post-install steps:

If *nix or Mac OS X switch to user postgres or other OS user who is able to use psql command to connect to the PostgreSQL database.

```
$ su postgres
```

Go to the [jdv-1.0.1/dv-docker/demo](http://bit.ly/2d88sxE) directory and run the following command:

```
$ psql -a -f financials-psql.sql
```

If Step 2 is successfully executed the the PostgreSQL environment contains the following databases. Hint: start the psql command line utility and type the “\l” to list the databases in PostgreSQL database.

```
$ psql
psql (9.4.4, server 9.4.9)
Type "help" for help.

postgres=# \l
                               List of databases
     Name      |  Owner   | Encoding  | Collate | Ctype |   Access privileges
---------------+----------+-----------+---------+-------+-----------------------
 apaccustomers | postgres | SQL_ASCII | C       | C     |
 brokerinfo    | postgres | SQL_ASCII | C       | C     |
 eucustomers   | postgres | SQL_ASCII | C       | C     |
 postgres      | postgres | SQL_ASCII | C       | C     |
 products      | postgres | SQL_ASCII | C       | C     |
 rhq           | rhqadmin | SQL_ASCII | C       | C     |
 template0     | postgres | SQL_ASCII | C       | C     | =c/postgres          +
               |          |           |         |       | postgres=CTc/postgres
 template1     | postgres | SQL_ASCII | C       | C     | =c/postgres          +
               |          |           |         |       | postgres=CTc/postgres
 uscustomers   | postgres | SQL_ASCII | C       | C     |
(9 rows)

postgres=# \q
```

## Setup MariaDB

The easiest way to install MariaDB is to use the pre-built binary packages which are available for a number of different operating systems. See [documentation](http://bit.ly/2d5TJjG) for more information and downloads.

:information_source: There is no binary package available for Mac OS X users, but it is possible to install MariaDB using the homebrew package described on this [page](http://bit.ly/2dswq6M).

Post-install steps

After the installation completes and using *nix, start MariaDB with:

```
$ sudo /etc/init.d/mysql start
```

Go to the [jdv-1.0.1/dv-docker/demo](http://bit.ly/2d88sxE) directory and run the following command:

```
$ sudo mysql < financials-mysql.sql
```

If Step 2 is successfully executed the MariaDB environment contains the following databases.

```
sudo mysql
Password:

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| apaccustomers      |
| brokerinfo         |
| eucustomers        |
| mysql              |
| performance_schema |
| products           |
| test               |
| uscustomers        |
+--------------------+
9 rows in set (0.02 sec)

mysql> exit
Bye
```

## Setup MySQL

The easiest way to install MySQL is to use the pre-built binary packages which are available for a number of different operating systems. See [documentation](http://bit.ly/2cCEoUL) for more information and downloads.

Post-install steps

If *nix or Mac OS X go to the /usr/local/mysql directory and start mysqld_safe

```
$ cd /usr/local/mysql
$ sudo ./bin/mysqld_safe
```

Go to the [jdv-1.0.1/dv-docker/demo](http://bit.ly/2d88sxE) directory and run the following command:

```
$ sudo /usr/local/mysql/bin/mysql < financials-mysql.sql
```

If Step 2 is successfully executed the MariaDB environment contains the following databases.

```
sudo /usr/local/mysql/bin/mysql
Password:

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| apaccustomers      |
| brokerinfo         |
| eucustomers        |
| mysql              |
| performance_schema |
| products           |
| test               |
| uscustomers        |
+--------------------+
9 rows in set (0.02 sec)

mysql> exit
Bye
```

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

Congratulations, you have completed this introduction lab.
