---
layout: "module"
subtitle: "Docker Container Lifecycle"
---

Your lab environment includes an instance of JBoss Data Virtualization and the MySQL relational database. This software is containerized using Docker technology on a Red Hat Enterprise Linux (RHEL) host.

The operating system user on your remote JDV lab host has been given privledges to administer the lifecyle of docker images and containers. Therefore, root access to the operating system isn't needed.

The following sections describe how to interact with your containerized software.

### Docker Images

The `docker images` command can be executed to view Docker images that have already been created for you.

Open a terminal in JBDS

![JBDS Terminal]({{ "/images/jdv/03-jbds_term.png" | prepend: site.baseurl }})

Then execute the following command:

```
docker images
```

**[NOTE]** Both of these images are already installed on your host system if we provided you a lab environment for this workshop.

### JDV Container

[ecwpz91/jboss-jdv-6](http://bit.ly/2crwLqk) — Docker image built using JBoss Data Virtualization release 6.3.4.

#### Usage

To boot in standalone mode:

```
docker run -d -p 6832:8080 -p 9990:9990 -p 8787:8787 -p 9999:9999 -p 31000:31000 --name test_jdv ecwpz91/jboss-jdv-6
```

**[NOTE]** In addition to starting a container of the `ecwpz91/jboss-jdv-6` image, the above command maps port `6832` on the host operating system to the new container’s port `8080` (and so on).

Doing so allows remote clients to connect to the containerized JDV integration solution through port `6832`.

To view console, open browser and goto:

```
http://127.0.0.1:6832/
```

To SSH into running container:

```
docker exec -it --user jboss test_jdv /bin/bash
```

*Or*

```
docker exec -it --user root test_jdv /bin/bash
```

To view log files of docker container:

```
docker logs test_jdv
```

To stop the container:

```
docker stop test_jdv
```

To delete the container:

```
docker rm -f test_jdv
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

### MySQL Container

[ecwpz91/mysql57](http://bit.ly/2dx97EU) — Docker image built using [MySQL](http://bit.ly/2cz3TZf) release 5.7.15.

#### Usage

To boot in standalone mode:

```
docker run -d -p 6432:3306 --name test_mysql ecwpz91/mysql57
```

**[NOTE]** In addition to starting a container of the `ecwpz91/mysql57` image, the above command maps port `6432` on the host operating system to the new container’s port `3306`.

Doing so allows remote mysql clients to connect to the containerized MySQL Relational Database Management System (RDBMS) through port `6432`.


To SSH into running container:

```
docker exec -it --user dbsys test_mysql /bin/bash
```

*Or*

```
docker exec -it --user root test_mysql /bin/bash
```

To view log files of docker container:

```
docker logs test_mysql
```

To stop the container:

```
docker stop test_mysql
```

To delete the container:

```
docker rm -f test_mysql
```

#### Credentials

| User | Password | Description |
| ------ | ------------ | ----------- |
| root  | my-secret-pw | MySQL root user |
| shadowman | r3dh4t1! | Default user |

#### Networking

| Port | Description |
| ----- | -------------- |
| 3306 | Default port |

### Container Networking

The MySQL and JDV runtimes execute within the confines of Docker containers. These Docker containers are started on a remote Red Hat Enterprise Linux (RHEL) 7 operating system.

The Docker daemon running on the RHEL7 remote host creates an internal network to allow for communication between containers. Both the JDV and PostgreSQL containers are assigned IP addresses from this internal network.

This network is inaccessible to remote clients. Subsequently, the Docker containers executing on the RHEL7 host are initially no accessible to remote clients. Docker, however, provides the ability to proxy network ports from the Docker containers to ports exposed by the RHEL7 host. This network proxy mechanism is leveraged to allow remote JDBC/http/EAP management clients to invoke the remote Docker containers that typically would be inaccessible.

The following diagram depicts this Docker network proxy mechanism:

![JDV Container Networking]({{ "/images/jdv/container_network.png" | prepend: site.baseurl }})
