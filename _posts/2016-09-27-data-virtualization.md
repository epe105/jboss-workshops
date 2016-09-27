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

## 2. Credentials

| User | Password | Description | URL |
| ------ | ------------ | ----------- | ---- |
| admin | jb0ssredhat! | EAP Mgmt Console | http://localhost:9990/console |
| admin | jb0ssredhat! | EAP Mgmt CLI | |
| dashboardAdmin | jb0ssredhat! | Teiid Dashboard | http://localhost:8080/dashboard |
| teiidUser | jb0ssredhat! | JDBC Connection | |
| modeshapeUser | jb0ssredhat! | ModeShape Rest Endpoint | http://localhost:8080/modeshape-rest |
| root  | my-secret-pw | MySQL root user | |

## 3. Docker Container Lifecycle

### 3.1 Docker Images

- [ecwpz91/jboss-jdv-6](http://bit.ly/2crwLqk)

    Docker image built using JBoss Data Virtualization 6.3.4 layered on JBoss EAP release 6.4.9.

- [ecwpz91/mysql57](http://bit.ly/2dx97EU)

    Docker image built using [MySQL](http://bit.ly/2cz3TZf) release 5.7.15.

**[NOTE]** Both of these images are already installed on your host system if we provided you a lab environment for this workshop.

## 4. JBoss Developer Studio

JBoss Developer Studio (JBDS) is an integrated development environment (IDE) that integrates and certifies both tooling and runtime components by combining Eclipse, best-of-breed open source tools, and the JBoss Enterprise platform. You must have JBoss Developer Studio installed in your local development environment.

Among many other uses, the Teiid Designer plugin for JBDS will be used extensively.

**[NOTE]** JBDS is already installed on your host system if we provided you a lab environment for this workshop.
