---
layout: "module"
subtitle: "Introduction"
---

## Overview

Red Hat JBoss Data Virtualization (JDV), formerly known as Red Hat JBoss Enterprise Data Services Platform (EDS), is a complete data provisioning, federation, integration and management solution that enables organizations to gain actionable and unified information. Red Hat JBoss Data Virtualization enables agile data utilization in three steps:

1. Connect: Access data from multiple, heterogeneous data sources.

2. Compose: Create reusable, business-friendly logical data models and views by combining and transforming data.

3. Consume: Make unified data easily consumable through open standard interfaces.

![JDV Architecture]({{ "/images/jdv/architecture.png" | prepend: site.baseurl }})

JDV includes:

- Tools for creating data views that are accessible through standard protocols. For those who are already familiar with JDV one of the tools is the Teiid Designer plug-in for Red Hat JBoss Developer Studio (JBDS).

- A robust runtime environment that provides enterprise-class performance, data integrity, and security (the JDV Server, which executes as a process within the Red Hat JBoss Enterprise Application Platform (EAP)).

- A repository for storing metadata (ModeShape)

JDV is based on the following community projects:

- [Teiid](http://red.ht/2d5nn8S)
- [Teiid Designer](http://red.ht/2duh9SE)
- [ModeShape](http://red.ht/2ds6xnG)

The figure below depicts the architectural overview of JDV:

![JDV Server]({{ "/images/jdv/server.png" | prepend: site.baseurl }})

Component  | Description
-----------| -----------
Query Engine  |  The heart of JDV Server is a high-performance query engine that processes relational, XML, XQuery and procedural queries from federated datasources. Features include support for homogeneous schemas, heterogeneous schemas, transactions, and user defined.
Embedded  |  An easy-to-use JDBC Driver that can embed the Query Engine in any Java application.
Server  |  An enterprise ready, scalable, manageable, runtime for the Query Engine that runs inside JBoss EAP that provides additional security, fault-tolerance, and administrative features.
Connectors  | JDV Server includes a rich set of Translators and Resource Adapters that enable access to a variety of sources, including most relational databases, web services, text files, and ldap.
Tools  |  JDV Server includes development and administration tools to define virtual databases containing views, procedures or even dynamic XML documents, monitor & manage any number of servers, and automate administrative & testing tasks.

## Prerequisites

- Access to the Internet and the following ports:
  - HTTP (80)
  - HTTPS (443)
- Experience with [SSH](http://bit.ly/2dx8P0G) and the the Bourne Again SHell (bash).
- Experience with [Git](http://bit.ly/2cTgp4D).
- Experience with [Docker](http://bit.ly/2dhG5LB).
- Experience with [PostgreSQL](https://www.postgresql.org/), [MariaDB](http://bit.ly/2d7veC7), or [MySQL](http://bit.ly/2cz3TZf) server.
