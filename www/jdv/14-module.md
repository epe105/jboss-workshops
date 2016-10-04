---
layout: "module"
subtitle: "Connecting to a Virtual Database"
---

Java Database Connectivity (JDBC) is an application to database connectivity tool. This Application Program Interface (API) enables communication between applications written in Java and data stored in databases providing methods for data querying and updating. JDBC is very similar to Open Database Connectivity (ODBC).

Red Hat JBoss Data Virtualization (JDV) provides an API that builds on Java Database Connectivity (JDBC), allowing client applications to issue SQL queries against deployed virtual databases (VDBs).

## JDBC

URLs used when establishing a connection using the driver class have the following format:

```
jdbc:teiid:VDB-NAME@mm[s]://HOSTNAME:PORT;[prop-name=prop-value;]*
```

Variable Name  |  Description
--|--
VDB-NAME |  The name of the virtual database (VDB) to which the application is connected.
mm[s] | The JBoss Data Virtualization JDBC protocol. mm is the default for normal connections. mms uses SSL for encryption and is the default for the AdminAPI tools.
HOSTNAME | The server where JBoss Data Virtualization is installed.
PORT  | The port on which JBoss Data Virtualization is listening for incoming JDBC connections.
[prop-name=prop-value] | Any number of additional name-value pairs can be supplied in the URL, separated by semi-colons. Property values must be URL encoded if they contain reserved characters, for example, ?, =, and ;.

:exclamation: VDB names can contain version information; for example, myvdb.2. If such a name is used in the URL, this has the same effect as supplying a version=2 connection property.

:information_source: If the VDB name contains version information, you cannot also use the version property in the same request.

## Where are we?

## How to access the data

When you have successfully deployed the Financials VDB into the JDV server, the JDBC protocol support is provided by the JDV server by using the Teiid JDBC driver. The Teiid JDBC driver which resided in teiid-8.12.5.redhat-8-jdbc.jar can be found in $EAP_HOME/dataVirtualization/jdbc directory.

The Teiid JDBC driver can be used in JDBC client tools like [Squirrel](http://bit.ly/2d68N0y) or [DBVisualizer](http://bit.ly/2d66fzU) etc..

The following steps are used to setup the connection using the Teiid JDBC driver in DBVisualizer.

Start DBVisualizer

![demo jdbc]({{ "/images/jdv/demo-jdbc-dbv.png" | prepend: site.baseurl }})

Select Tools > Driver Manager.

![demo jdbc]({{ "/images/jdv/demo-jdbc.dm.png" | prepend: site.baseurl }})

Create a new driver by clicking on create new driver button.

![demo jdbc]({{ "/images/jdv/demo-jdbc-dbv-ad.png" | prepend: site.baseurl }})

Close the Driver Manager windows. Since we have setup the Teiid JDBC driver we can now create a database connection to the Financials VDB using the driver previously created.

Create a new database connection by clicking on Create a new database connection button, demo jdbc dbv dbc button and select No Wizard.

![demo jdbc]({{ "/images/jdv/demo-jdbc-dbv-dbc.png" | prepend: site.baseurl }})

Select the Teiid driver in the Driver list box and fill in the approriate settings for connecting to the Financials VDB as depicted in the screenshot above. Try to connect and if the connection is successfully established you can run queries against the models which are exposed by the VDB.

![demo jdbc]({{ "/images/jdv/demo-jdbc-connect.png" | prepend: site.baseurl }})
