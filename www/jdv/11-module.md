---
layout: "module"
subtitle: "Creating a Web Service"
---

In this lab, you will be utilizing the Teiid Designer and JBDS to create a Web service. It should be noted that this lab is not a guide on Web services or how or when to use them. Rather, this is an instructional approach for some of the advanced capabilities of Teiid Designer.

## Where are we?

**[INSERT_IMAGE_HERE]**

To begin, right-click on the All_Customers.xmi model in the FederatedDataLayer folder and select option Modeling ▸ Create Web Service. This is indicated in the illustration below.

**[INSERT_IMAGE_HERE]**

**[INSERT_IMAGE_HERE]**

This will bring up the following wizard.

**[INSERT_IMAGE_HERE]**

In order to keep things organized, be sure to select “Browse” and select the WebServices folder we created in an earlier lab. This will drop all web service artifacts within this folder. Then, click Finish. If the generation was successful, the following result will occur.

**[INSERT_IMAGE_HERE]**

The generated Web Service will open after clicking OK. Your Teiid Designer view should resemble that below.

**[INSERT_IMAGE_HERE]**

:information_source: Preview data on Web Services is not activated. Use tools like SoapUI to test SOAP/REST services.

To validate the generated Web Service one have to create a SOAP war file first and deploy the generated SOAP war to the server.

Right-click on the Financials VDB and select Modeling ▸ Generate SOAP War

Deploy the generated SOAP war file to $JDV_HOME/standalone/deployments The Web Service WSDL should be available http://localhost:8080/Financials/All_Customers_CUSTOMER?wsdl

Use [SoapUI](http://bit.ly/2d63gqV) to test the Web Service previously created.

Upon inspection the XML output of the Web Service invocation should show similar results as indicated below.

**[INSERT_IMAGE_HERE]**

Congratulations, you have now completed this lab.
