---
layout: "module"
subtitle: "Introduction"
---

# Overview

Red Hat JBoss Data Virtualization (JDV), formerly known as Red Hat JBoss Enterprise Data Services Platform (EDS), is a complete data provisioning, federation, integration and management solution that enables organizations to gain actionable and unified information. Red Hat JBoss Data Virtualization enables agile data utilization in three steps:

1. Connect: Access data from multiple, heterogeneous data sources.

2. Compose: Create reusable, business-friendly logical data models and views by combining and transforming data.

3. Consume: Make unified data easily consumable through open standard interfaces.

![JDV Architecture]({{ "/images/jdv/architecture.png" | prepend: site.baseurl }})

## Prerequisites

- Access to the Internet and the following ports:
  - SSH (22)
  - HTTP (80)
  - HTTPS (443)
- Experience with [SSH](http://bit.ly/2dx8P0G) and the the Bourne Again SHell (bash).
- Experience with [Git](http://bit.ly/2cTgp4D).
- Experience with [Docker](http://bit.ly/2dhG5LB).
- A [PostgreSQL](https://www.postgresql.org/), [MariaDB](http://bit.ly/2d7veC7), or [MySQL](http://bit.ly/2cz3TZf) server.
- OpenJDK or Oracle JDK version 1.7 or newer.

**[NOTE]** Prerequisites with respect to PostgreSQL server, MariaDB server or MySQL server are optional. We will use the embedded H2 database which is installed in the JDV environment by default as part of JBoss EAP for you convenience.

## JBoss Developer Studio

JBoss Developer Studio (JBDS) is an integrated development environment (IDE) that integrates and certifies both tooling and runtime components by combining Eclipse, best-of-breed open source tools, and the JBoss Enterprise platform. You must have JBoss Developer Studio installed in your local development environment.

Among many other uses, the Teiid Designer plugin for JBDS will be used extensively.

:information_source: If we provided you a lab environment for this workshop, we already set all this up for you — so you can skip this section.

### Download & Install

This workshop requires the use of JBDS version 8.0 or more recent.

JBDS can be downloaded from the Red Hat JBoss Developer Studio Overview page by clicking the "[Get Started](http://red.ht/2diqdZq)" button on the hyperlinked page.

Once downloaded, refer to the instructions provided in the JBDS product [documentation](http://red.ht/2cBavc8) to install JBDS.

### JBDS Plugins Overview

JBDS includes a variety of different plugins. The following is a list of the JBDS plugins that are needed for execution of this workshop:

1. **Integration Stack Suite**

    The Integration Stack Suite of plug-ins is of particular importance for the JDV course.

    The Integration Stack Suite of plug-ins is not included out-of-the-box with JBDS. Instead, the suite needs to be manually installed and is different between JBDS version 7.1 and 8.0.

    For version 7.1 of JBDS, follow the installation procedures in the JBDS IntegrationStack documentation.

    For version 8.0 of JBDS, please see the section of this guide entitled Integration Stack Suite Plugins for JBDS 8.0

2. **Remote System Explorer Plugin**

    JBDS includes an out-of-the-box plugin for creating ssh / scp connections to remote SSH-enabled servers called: Remote System Explorer. No additional install of this plugin is necessary.

3. **Eclipse eGit Plugin**

    JBDS includes an out-of-the-box plugin called eGit to support git enabled projects. No additional install of this plugin is necessary. Git is a distributed SCM, which means every developer has a full copy of all history of every revision of the code, making queries against the history very fast and versatile.

4. **Eclipse m2e Plugin**

    JBDS includes an out-of-the-box plugin called m2e to support Apache Maven enabled projects. No additional install of this plugin is necessary. The goal of the m2e project is to provide a first-class Apache Maven support in the Eclipse IDE, making it easier to edit a Maven project’s pom.xml and run a build from the IDE.

### Teiid Designer

Included in the Integration Stack suite of JBDS plugins is the Teiid Designer. This is one of the primary developer tools provided by the JDV product and is used extensively in this workshop.

It is critical that the most recent version of this plugin is being used. Verify the version of the Teiid Designer plugin via the following:

1. In your local workstation, start JBDS.
2. Navigate to: `Help` --> `Installation Details` --> `Installed Software`.
3. Scroll down and verify that the version of Teiid plugins is at least `9.0.1.Final` or more recent.

## Docker Container Lifecycle

Your lab environment includes an instance of JBoss Data Virtualization and the MySQL relational database. This software is containerized using Docker technology on a Red Hat Enterprise Linux (RHEL) host.

The operating system user on your remote JDV lab host has been given privledges to administer the lifecyle of docker images and containers. Therefore, root access to the operating system isn't needed.

The following sections describe how to interact with your containerized software.

### Docker Images

The `docker images` command can be executed to view Docker images that have already been created for you.

Open a terminal and execute the following:

**[TODO]**

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

![JDV Container Networking]({{ "/images/jdv/container_networking.png" | prepend: site.baseurl }})

## Setup Demo Database (optional)

In order to use the labs we need to prepare one database. Out of the box we provide H2 embedded databases for your convinience. We provide some database SQL scripts as well for PostgreSQL, MariaDB and MySQL to load initial data into the database of your choice. In the next paragraph we will describe how to install the database and how to load the demo data into the database.

### Setup MySQL

After starting the MySQL container, access the RDBMS via any `mysql` utility and perform the following commands.

**[NOTE]** The `mysql` utility is already installed on your host system if we provided you a lab environment for this workshop.

1. Login to MySQL.
```
mysql -u root -p -h 127.0.0.1 --port=#
```

2. Go to the home (~) directory and load the `finanacials.sql` database.
**[TODO]**

3. If "Step 2" is successful the MySQL environment contains all necessary databases.

The labs will use the following databases:

- apaccustomer
- brokerinfo
- eucustomers
- products
- uscustomers

Congratulations, you have completed this introduction lab!
