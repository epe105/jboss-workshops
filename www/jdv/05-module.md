---
layout: "module"
subtitle: "The Teiid Designer"
---

To begin this exercise, launch JBDS (if it is not already open), and open the “Teiid Designer” perspective. This is because the JBoss perspective is the default perspective. To open the “Teiid Designer” perspective, first select Window → Open Perspective → Other…​ in order for the full list of perspectives to be displayed and the “Teiid Designer” perspective to be selectable.

Select Teiid Designer from the perspective list as shown below.

Click OK. This will bring you to a screen that looks like this:

**[INSERT_IMAGE_HERE]**

Connecting to a running Server instance is necessary to execute previews of the data services that we will create. In the Teiid Guides window select Teiid. In the Server tab open the tree node of Red Hat JBoss Data Virtualization 6.3.0 by clicking on arrow. This will set the Default Server automaticaly.

Click on the Red Hat JBoss Data Virtualization 6.3.0 link in the Default Server window and then click tab name Teiid Instance.

For the Teiid JDBC Connection Info, enter “localhost” for the host and enter teiidUser / redhat1! for the username / password. Keep the default port number. Also, be sure that the “Save” checkbox is marked. The “SSL” box should not be marked. Keep the default port number. When complete, your Teiid Server Connection Information should look like the illustration below. As a “sanity” check, be sure to click the "Test Administration Connection" and "Test JDBC Connection" links. You should get a "OK" message. If you do not, please raise your hand. If it failed, it may be necessary to cancel and retry the steps again.

JBDS should look like the following illustration.

**[INSERT_IMAGE_HERE]**

You can now begin creating your own Red Hat JBoss Data Virtualization projects.

Congratulations, you have now completed this lab.
