---
layout: "module"
subtitle: "JBoss Developer Studio"
---

## JBoss Developer Studio

JBoss Developer Studio (JBDS) is an integrated development environment (IDE) that integrates and certifies both tooling and runtime components by combining Eclipse, best-of-breed open source tools, and the JBoss Enterprise platform. You must have JBoss Developer Studio installed in your local development environment.

Among many other uses, the Teiid Designer plugin for JBDS will be used extensively.

:information_source: If we provided you a lab environment for this workshop, we already set all this up for you!

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

## Launching JBDS!
