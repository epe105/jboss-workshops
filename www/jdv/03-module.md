---
layout: "module"
subtitle: "Docker Container Lifecycle"
---

Your lab environment includes an instance of JBoss Data Virtualization and the MySQL relational database. This software is containerized using Docker technology on a Red Hat Enterprise Linux (RHEL) host.

The operating system user on your remote JDV lab host has been given privledges to administer the lifecyle of docker images and containers. Therefore, root access to the operating system isn't needed.

The following sections describe how to interact with your containerized software.

## Docker Images

The `docker images` command can be executed to view Docker images that have already been created for you.

Open a terminal in JBDS.

![JBDS Terminal]({{ "/images/jdv/03-jbds_term.png" | prepend: site.baseurl }})

Then execute the following command:

```
docker images
```

![Docker Images]({{ "/images/jdv/03-docker_images.png" | prepend: site.baseurl }})

As you can see, we've pulled some images into the environment.

### JDV Container

[ecwpz91/jboss-jdv-6](http://bit.ly/2crwLqk) — Docker image built using JBoss Data Virtualization release 6.3.4.

#### Usage

To boot in standalone mode:

```
docker run -d -p port#:8080 -p port#:9990 -p port#:8787 -p port#:9999 -p port#:31000 --name user#_jdv ecwpz91/jboss-jdv-6
```

:information_source: In addition to starting a container of the `ecwpz91/jboss-jdv-6` image, the above command maps `port#` on the host operating system to the new container’s port `8080` (and so on).

Doing so allows remote clients to connect to the containerized JDV integration solution through port `6832`.

:information_source: If you encounter the error following error message:

```
docker: Error response from daemon: failed to create endpoint user#_jdv on network bridge: Bind
for 0.0.0.0:port# failed: port is already allocated.
```

This is because a running container or process may already be using this port on the current host system, therefore making it unallocable.

To fix this, first remove the container, and then relaunch the Docker image with a different host port number.

```
docker rm user#_jdv
docker run -d -p new_port#:3306 --name user#_jdv ecwpz91/jboss-jdv-6
```

To view console, open browser and goto:

```
http://127.0.0.1:port#/
```

To SSH into running container:

```
docker exec -it --user jboss user#_jdv /bin/bash
```

Or, to login as the root user:

```
docker exec -it --user root user#_jdv /bin/bash
```

To view log files of docker container:

```
docker logs user#_jdv
```

To stop the container:

```
docker stop user#_jdv
```

To delete the container:

```
docker rm -f user#_jdv
```

#### Credentials

| User | Password | Description | URL |
| ------ | ------------ | ----------- | ---- |
| admin | jb0ssredhat! | EAP Mgmt Console | http://localhost:9990/console |
| admin | jb0ssredhat! | EAP Mgmt CLI | |
| dashboardAdmin | jb0ssredhat! | Teiid Dashboard | http://localhost:6832/dashboard |
| teiidUser | jb0ssredhat! | JDBC Connection | |
| modeshapeUser | jb0ssredhat! | ModeShape Rest Endpoint | http://localhost:6832/modeshape-rest |

#### Networking

| Port | Description |
| ----- | -------------- |
| 8080 | Web Application |
| 9990 | EAP Mgmt Console |
| 8787 |  EAP Remote Debug |
| 9999 | EAP Mgmt CLI |
| 31000 | JDBC Connection |

### MySQL Container (Optional)

:exclamation: Out of the box we provide H2 embedded databases for your convenience, which is what we will use extensively throughout this lab. But, if you'd like to try some database SQL scripts as well for MySQL the next paragraph will describe how to instantiate the RDBMS container and load the demo data into these databases, using Docker.

[ecwpz91/mysql57](http://bit.ly/2dx97EU) — Docker image built using [MySQL](http://bit.ly/2cz3TZf) release 5.7.15.

#### Usage

To boot in standalone mode:

```
docker run -d -p port#:3306 --name user#_mysql ecwpz91/mysql57
```

:information_source: In addition to starting a container of the `ecwpz91/mysql57` image, the above command maps `port#` on the host operating system to the new container’s port `3306`.

Doing so allows remote mysql clients to connect to the containerized MySQL Relational Database Management System (RDBMS) through port `6432`.

:information_source: If you encounter the error following error message:

```
docker: Error response from daemon: failed to create endpoint user#_mysql on network bridge: Bind
for 0.0.0.0:port# failed: port is already allocated.
```

This is because a running container or process may already be using this port on the current host system, therefore making it unallocable.

To fix this, first remove the container, and then relaunch the Docker image with a different host port number.

```
docker rm user#_mysql
docker run -d -p new_port#:3306 --name user#_mysql ecwpz91/mysql57
```

To SSH into running container:

```
docker exec -it --user dbsys user#_mysql /bin/bash
```

Or, to login as the root user:

```
docker exec -it --user root user#_mysql /bin/bash
```

To view log files of docker container:

```
docker logs user#_mysql
```

To stop the container:

```
docker stop user#_mysql
```

To delete the container:

```
docker rm -f user#_mysql
```

#### Credentials

| User | Password | Description |
| ------ | ------------ | ----------- |
| root  | my-secret-pw | MySQL root user |
| shadowman | r3dh4t1! | Default user |

#### Data Setup

:exclamation: The MySQL container `ecwpz91/mysql57` should be started before proceeding.

Open a terminal, and change directory to the host system's workshop project folder:

```
$ pushd ~/Desktop/jboss-workshops/dv-docker/demo
```

Login to the running container:

```
$ mysql -u root -p -h 127.0.0.1 -P port#
```

Executing SQL Statements from a Text File:

```
mysql> source financials-mysql.sql
```

If this is successfully executed, the MySQL environment contains all necessary databases.

```
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

The labs will use the following databases:

- apaccustomer
- brokerinfo
- eucustomers
- products
- uscustomers

#### Networking

The MySQL and JDV runtimes execute within the confines of Docker containers. These Docker containers are started on a remote Red Hat Enterprise Linux (RHEL) 7 operating system.

The Docker daemon running on the RHEL7 remote host creates an internal network to allow for communication between containers. Both the JDV and MySQL containers are assigned IP addresses from this internal network.

This network is inaccessible to remote clients. Subsequently, the Docker containers executing on the RHEL7 host are initially no accessible to remote clients. Docker, however, provides the ability to proxy network ports from the Docker containers to ports exposed by the RHEL7 host. This network proxy mechanism is leveraged to allow remote JDBC/http/EAP management clients to invoke the remote Docker containers that typically would be inaccessible.

The following diagram depicts this Docker network proxy mechanism:

![JDV Container Networking]({{ "/images/jdv/03-container_network.png" | prepend: site.baseurl }})

Now that you understand more about Docker images and containers, it's time to move on to the next lab.
