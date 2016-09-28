---
layout: "module"
subtitle: "Login & Tour of Guacamole"
---

## Welcome to JDV!

This lab provides a quick tour of the Guacamole VNC server to help you get familiar with lab environment along with some key terminology we will use in subsequent lab content.

If you are already familiar with the basics of Docker you can skip this lab — after making sure you can login.

## Key Terms

We will be using the following terms throughout the workshop labs so here are some basic definitions you should be familiar with. And you’ll learn more terms along the way, but these are the basics to get you started.

- Container — Your software wrapped in a complete filesystem containing everything it needs to run
- Image — We are talking about Docker images; read-only and used to create containers

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
