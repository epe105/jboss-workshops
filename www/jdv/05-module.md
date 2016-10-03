---
layout: "module"
subtitle: "The Teiid Designer"
---

To begin this exercise, launch JBDS (if it is not already open), and open the “Teiid Designer” perspective.

To open the “Teiid Designer” perspective, first select Window → Open Perspective → Other…​ in order for the full list of perspectives to be displayed and the “Teiid Designer” perspective to be selectable.

Select Teiid Designer from the perspective list as shown below and click OK. This will bring you to a screen that looks like this:

![Teiid Designer]({{ "/images/jdv/05-teiid_design.png" | prepend: site.baseurl }})

:exclamation: The JDV container `ecwpz91/jboss-jdv-6` should be started before proceeding.

Connecting to a running Server instance is necessary to execute previews of the data services that we will create.

To do this, start by going to the "Default Server" tab and defining a server.

![Default Server 1]({{ "/images/jdv/05-default_server1.png" | prepend: site.baseurl }})

Select JBoss EAP 6.1+, rename the server (optional), and click next.

Since the instance of JDV is running in a containerized environment, define a remote server adapter.

![Default Server 2]({{ "/images/jdv/05-default_server2.png" | prepend: site.baseurl }})

Click next, and finish.

In the "Teiid Guides" window select `Teiid` → `Edit JBoss / Teiid Instance Properties`.

![Default Server 4]({{ "/images/jdv/05-default_server4.png" | prepend: site.baseurl }})

Or, in the "Servers Tab" right click and select "Open".

![Default Server 5]({{ "/images/jdv/05-default_server5.png" | prepend: site.baseurl }})

Then navigate the the "Teiid Instance" tab in order to verify and test your JDV Administration and JDBC Connection.

For the Teiid JDBC Connection Info, enter `teiidUser` as the username and `jb0ssredhat!` for the password.

:information_source: The default port number may need to change depending on which proxy network ports from the Docker containers are being exposed to the RHEL7 host.

Also, be sure that the “Save” checkbox is marked. The “SSL” box should not be marked. Keep the default port number. When complete, your Teiid Server Connection Information should look like the illustration below. As a “sanity” check, be sure to click the "Test Administration Connection" and "Test JDBC Connection" links. You should get a "OK" message.


If you do not, please raise your hand :raising_hand:. If it failed, it may be necessary to cancel and retry the steps again.

JBDS should look like the following illustration.

![Default Server ]({{ "/images/jdv/05-default_server6.png" | prepend: site.baseurl }})

You can now begin creating your own Red Hat JBoss Data Virtualization projects.

:+1: Congratulations, you have now completed this lab.
