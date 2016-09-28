---
layout: default
subtitle: "JDV Environment Overview"
date: "2016-09-27 14:01"
---

The purpose of this module is to introduce you to your JBoss Data Virtualization (JDV) lab environment.

## 1. Prerequisites

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

## 2. Credentials

| User | Password | Description | URL |
| ------ | ------------ | ----------- | ---- |
| admin | jb0ssredhat! | EAP Mgmt Console | http://localhost:9990/console |
| admin | jb0ssredhat! | EAP Mgmt CLI | |
| dashboardAdmin | jb0ssredhat! | Teiid Dashboard | http://localhost:8080/dashboard |
| teiidUser | jb0ssredhat! | JDBC Connection | |
| modeshapeUser | jb0ssredhat! | ModeShape Rest Endpoint | http://localhost:8080/modeshape-rest |

## 4. Connecting to Lab Environment



## 5. JBoss Developer Studio

JBoss Developer Studio (JBDS) is an integrated development environment (IDE) that integrates and certifies both tooling and runtime components by combining Eclipse, best-of-breed open source tools, and the JBoss Enterprise platform. You must have JBoss Developer Studio installed in your local development environment.

Among many other uses, the Teiid Designer plugin for JBDS will be used extensively.

**[NOTE]** JBDS is already installed on your host system if we provided you a lab environment for this workshop.

### 5.1. Download & Install

This workshop requires the use of JBDS version 8.0 or more recent.

JBDS can be downloaded from the Red Hat JBoss Developer Studio Overview page by clicking the "[Get Started](http://red.ht/2diqdZq)" button on the hyperlinked page.

Once downloaded, refer to the instructions provided in the JBDS product [documentation](http://red.ht/2cBavc8) to install JBDS.

### 5.2. JBDS Plugins Overview

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

### 5.3. Teiid Designer

Included in the Integration Stack suite of JBDS plugins is the Teiid Designer. This is one of the primary developer tools provided by the JDV product and is used extensively in this workshop.

It is critical that the most recent version of this plugin is being used. Verify the version of the Teiid Designer plugin via the following:

1. In your local workstation, start JBDS.
2. Navigate to: `Help` --> `Installation Details` --> `Installed Software`.
3. Scroll down and verify that the version of Teiid plugins is at least `9.0.1.Final` or more recent.

## 6. Docker Container Lifecycle

Your lab environment includes an instance of JBoss Data Virtualization and the PostgreSQL relational database. This software is containerized using Docker technology on a Red Hat Enterprise Linux (RHEL) host.

The operating system user on your remote JDV lab host has been given privledges to administer the lifecyle of docker images and containers. Therefore, root access to the operating system isn't needed.

The following sections describe how to interact with your containerized software.

### 6.1 Docker Images

The `docker images` command can be executed to view Docker images that have already been created for you.



**[NOTE]** Both of these images are already installed on your host system if we provided you a lab environment for this workshop.

### 6.4 JDV Container

[ecwpz91/jboss-jdv-6](http://bit.ly/2crwLqk) — Docker image built using JBoss Data Virtualization release 6.3.4.

#### 6.4.1 Usage

To boot in standalone mode:
```
docker run -d -p 8080:8080 -p 9990:9990 -p 8787:8787 -p 9999:9999 -p 31000:31000 --name test_jdv ecwpz91/jboss-jdv-6
```

To view console, open browser and goto:
```
http://127.0.0.1:8080/
```

To SSH into running container:
```
docker exec -it --user jboss test_jdv /bin/bash
```

#### 6.2.2 Credentials

| User | Password | Description | URL |
| ------ | ------------ | ----------- | ---- |
| admin | jb0ssredhat! | EAP Mgmt Console | http://localhost:9990/console |
| admin | jb0ssredhat! | EAP Mgmt CLI | |
| dashboardAdmin | jb0ssredhat! | Teiid Dashboard | http://localhost:8080/dashboard |
| teiidUser | jb0ssredhat! | JDBC Connection | |
| modeshapeUser | jb0ssredhat! | ModeShape Rest Endpoint | http://localhost:8080/modeshape-rest |

#### 6.2.3 Networking

| Port | Description |
| ----- | -------------- |
| 8080 | Web Application |
| 9990 | EAP Mgmt Console |
| 8787 |  EAP Remote Debug |
| 9999 | EAP Mgmt CLI |
| 31000 | JDBC Connection |

### 6.3 MySQL Container

[ecwpz91/mysql57](http://bit.ly/2dx97EU) — Docker image built using [MySQL](http://bit.ly/2cz3TZf) release 5.7.15.

#### 6.3.1 Usage

To boot in standalone mode:
```
docker run -d -p 3306:3306 --name test_mysql ecwpz91/mysql57
```

To SSH into running container:
```
docker exec -it --user dbsys test_mysql /bin/bash
```

To view log files:
```
docker logs test_mysql
```

#### 6.3.2 Credentials

| User | Password | Description |
| ------ | ------------ | ----------- |
| root  | my-secret-pw | MySQL root user |
| shadowman | r3dh4t1! | Default user |

#### 6.3.3 Networking

| Port | Description |
| ----- | -------------- |
| 3306 | Default port |
