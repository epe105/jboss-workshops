---
layout: "module"
subtitle: "JBoss Developer Studio"
---

JBoss Developer Studio (JBDS) is an Integrated Development Environment (IDE) that integrates and certifies both tooling and runtime components by combining Eclipse, best-of-breed open source tools, and the JBoss Enterprise platform. You must have JBoss Developer Studio installed in your local development environment.

Among many other uses, the Teiid Designer plugin for JBDS will be used extensively.

### Download & Install

:exclamation: If we provided you a lab environment for this workshop, we already set all this up for you.

This workshop requires the use of JBDS version 8.0 or later.

JBDS can be downloaded from the [Red Hat JBoss Developer Studio Overview](http://red.ht/2diqdZq) page by clicking the "Get Started" button.

Once downloaded, refer to the instructions provided in the JBDS product [documentation](http://red.ht/2cBavc8) to continue installation.

### JBDS Plugins Overview

JBDS includes a variety of different plugins. The following is a list of the JBDS plugins that are needed for execution of this workshop:

1. [**Integration Stack Suite**](http://red.ht/2cOiyAQ)

    Included in the Integration Stack suite of JBDS plugins is the Teiid Designer. This is one of the primary developer tools provided by the JDV product and is used extensively in this workshop.

2. **Remote System Explorer Plugin**

    JBDS includes an out-of-the-box plugin for creating ssh / scp connections to remote SSH-enabled servers called: Remote System Explorer. No additional install of this plugin is necessary.

3. **Eclipse eGit Plugin**

    JBDS includes an out-of-the-box plugin called eGit to support git enabled projects. No additional install of this plugin is necessary. Git is a distributed SCM, which means every developer has a full copy of all history of every revision of the code, making queries against the history very fast and versatile.

4. **Eclipse m2e Plugin**

    JBDS includes an out-of-the-box plugin called m2e to support Apache Maven enabled projects. No additional install of this plugin is necessary. The goal of the m2e project is to provide a first-class Apache Maven support in the Eclipse IDE, making it easier to edit a Maven project’s pom.xml and run a build from the IDE.

### Teiid Designer

It is critical that the most recent version of this plugin is being used. Verify the version of the Teiid Designer plugin via the following:

In your remote workstation, start JBDS.

![Guacamole JDBS]({{ "/images/jdv/02-jbds_launch.png" | prepend: site.baseurl }})

Navigate to `Help` → `Installation Details` → `Installed Software`.

![JDBS Installation Details]({{ "/images/jdv/02-jbds_instd.png" | prepend: site.baseurl }})

![Teiid Plugin Version]({{ "/images/jdv/02-jbds_teiid.png" | prepend: site.baseurl }})

Scroll down and verify that the version of Teiid plugins is at least `9.0.1.Final` or later.

:clap: Congratulations you've completed this lab.
