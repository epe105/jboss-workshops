CREATE TABLE productdata (
  ProductID varchar(10) NOT NULL,
  ProductName varchar(60) DEFAULT NULL,
  ProductType varchar(15) DEFAULT NULL,
  ISSUER varchar(10) DEFAULT NULL,
  EXCHANGE varchar(10) DEFAULT NULL,
  DJIComponent decimal(1,0) NOT NULL,
  SP500Component decimal(1,0) NOT NULL,
  NAS100Component decimal(1,0) NOT NULL,
  AMEXINTComponent decimal(1,0) NOT NULL,
  PrimaryBusiness varchar(30) DEFAULT NULL,
  PRIMARY KEY (PRODUCTID)
);



CREATE TABLE productsymbols (
  ProductID varchar(10) NOT NULL,
  SymbolType decimal(10,0) DEFAULT NULL,
  SYMBOL varchar(10) NOT NULL,
  CUSIP varchar(20) DEFAULT NULL
);


ALTER TABLE productsymbols ADD FOREIGN KEY ("PRODUCTID")
      REFERENCES productdata ("PRODUCTID");


INSERT INTO productdata VALUES ('PRD01002','The Boeing Company','Stock','Orange','NYSE','1','1','0','0','defense'),('PRD01003','Monsanto Company','Stock','LeggMsn','NYSE','0','0','0','0',NULL),('PRD01004','Oracle Corporation','Stock','MMFinan','NasdaqNM','0','1','1','0','computer software'),('PRD01005','Sybase Incorporated','Stock','MMFinan','NYSE','0','0','0','0','computer software'),('PRD01006','Microsoft Corporation','Stock','MMFinan','NasdaqNM','1','1','1','0','computer software'),('PRD01007','International Business Machines Corporation','Stock','MMFinan','NYSE','1','1','0','0',NULL),('PRD01008','Dell Computer Corporation','Stock','MMFinan','NasdaqNM','0','1','1','0','computer hardware'),('PRD01009','Hewlett-Packard Company','Corporate Bond','LeggMsn','NYSE','0','0','0','0',NULL),('PRD01010','Hewlett-Packard Company','Stock','LeggMsn','NYSE','1','1','0','0','computer hardware'),('PRD01011','Gateway, Incorporated','Stock','LeggMsn','NYSE','0','1','0','0','computer hardware'),('PRD01012','General Electric Company','Stock','Orange','NYSE','1','1','0','0',NULL),('PRD01013','Merck and Company','Stock','Orange','NYSE','1','1','0','0','pharmaceuticals'),('PRD01014','Walt Disney Company','Stock','Orange','NYSE','1','1','0','0','entertainment'),('PRD01015','McDonalds Corporation','Stock','Orange','NYSE','1','1','0','0','food'),('PRD01016','Dow Chemical Company','Stock','Orange','NYSE','0','1','0','0','chemicals'),('PRD01017','General Motors Corporation','Corporate Bond','Orange','NYSE','0','0','0','0',NULL),('PRD01018','General Motors Corporation','Stock','Orange','NYSE','1','1','0','0','automobiles'),('PRD01019','General Motors Corporation','Stock','Orange','Toronto','0','0','0','0','automobiles'),('PRD01020','Peoplesoft Incorporated','Stock','LeggMsn','NasdaqNM','0','1','1','0','computer software'),('PRD01021','Rational Software','Stock','LeggMsn','NasdaqNM','0','1','1','0','computer software'),('PRD01022','Sun Microsystems Incorporated','Stock','LeggMsn','NasdaqNM','0','1','1','1',NULL),('PRD01023','Sun Microsystems Incorporated','Stock','LeggMsn','NasdaqNM','0','1','1','1',NULL),('PRD01024','Sinclair Broadcast Group Incorporated','Stock','LeggMsn','NasdaqNM','0','0','0','0',NULL),('PRD01025','Columbia Sportsware Company','Stock','LeggMsn','NasdaqNM','0','0','0','0',NULL),('PRD01026','Columbia Banking System Incorporated','Stock','Orange','NasdaqNM','0','0','0','0',NULL),('PRD01027','British Sky Broadcasting Group PLC','Corporate Bond','Orange','NYSE','0','0','0','0',NULL),('PRD01028','British Sky Broadcasting Group PLC','Stock','Orange','NYSE','0','0','0','0',NULL),('PRD01029','Columbia Strategic Value Fund','Mutual Fund','Orange','Nasdaq','0','0','0','0',NULL),('PRD01030','Columbia Technology Fund','Mutual Fund','Orange','Nasdaq','0','0','0','0',NULL),('PRD01031','Ford Motor Company','Stock','Orange','NYSE','0','1','0','0','automobiles'),('PRD01032','Ford Motor Credit Company','Corporate Bond','Orange','NYSE','0','0','0','0',NULL),('PRD01033','Ford Motor Credit Company','Stock','Orange','NYSE','0','0','0','0',NULL),('PRD01034','SAP AG','Stock','Orange','NYSE','0','0','0','0',NULL),('PRD01035','Saputo Incorporated','Stock','Orange','Toronto','0','0','0','0',NULL),('PRD01036','Toyota Motor Corporation','Stock','Orange','NYSE','0','0','0','0','automobiles'),('PRD01037','Toyota Motor Credit Corporation','Corporate Bond','Orange','NYSE','0','0','0','0',NULL),('PRD01038','Honda Motor Company Limited','Stock','Orange','NYSE','0','0','0','0','automobiles'),('PRD01039','Lockheed Martin Corporation','Stock','Orange','NYSE','0','1','0','0','defense'),('PRD01040','Fidelity Bancorp Incorporated of Pennsylvania','Stock','Orange','NasdaqNM','0','0','0','0','banking'),('PRD01041','Fidelity Advisor Series I Equity Growth Fund','Mutual Fund','Orange','Nasdaq','0','0','0','0',NULL),('PRD01042','Fidelity Advisor Series VII Technology Fund','Mutual Fund','Orange','Nasdaq','0','0','0','0',NULL),('PRD01043','Fidelity Advisor Series VII Healthcare Fund','Mutual Fund','Orange','Nasdaq','0','0','0','0',NULL),('PRD01044','Fidelity Advisor Series VII Financial Services Fund','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01045','Fidelity National Information Solutions Incorporated','Stock','MMFinan','NasdaqNM','0','0','0','0',NULL),('PRD01046','Eli Lilly and Company','Stock','MMFinan','NYSE','0','1','0','0','pharmaceuticals'),('PRD01047','Palm, Incorporated','Stock','MMFinan','NasdaqNM','0','1','0','1','computer hardware'),('PRD01048','H. J. Heinz Company','Stock','MMFinan','NYSE','0','1','0','0','food'),('PRD01049','Coca-Cola Company','Stock','MMFinan','NYSE','1','1','0','0','soft drinks'),('PRD01050','PepsiCo, Incorporated','Stock','MMFinan','NYSE','0','1','0','0','soft drinks'),('PRD01051','Merrill Lynch Balanced Capital Fund','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01052','Merrill Lynch Dragor Fund Incorporated','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01053','Merrill Lynch Equity Income Fund','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01054','Merrill Lynch Fundamental Growth Fund Incorporated','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01055','Merrill Lynch Global Growth Fund Incorporated','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01056','Merrill Lynch Global Technology Fund Incorporated','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01057','Morgan Stanley Convertible Securities Trust','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01058','Morgan Stanley Capital Opportunities Trust Fund','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01059','Morgan Stanley Developing Growth Securities Trust','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01060','Morgan Stanley Dean Witter Balanced Income Fund','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01061','Morgan Stanley Growth A','Mutual Fund','MMFinan','NasdaqSC','0','0','0','0',NULL),('PRD01062','Morgan Stanley Dean Witter Limited Term Municipal','Mutual Fund','MMFinan','Nasdaq','0','0','0','0',NULL),('PRD01063','Qwest Communications International Incorporated','Stock','MMFinan','NYSE','0','1','0','1','communications'),('PRD01064','American National Insurance Company','Stock','Orange','NasdaqNM','0','0','0','0','insurance'),('PRD01065','National Western Life Insurance Company','Stock','Orange','NasdaqNM','0','0','0','0','insurance'),('PRD01066','Cotton States Life Insurance Company','Stock','Orange','NasdaqNM','0','0','0','0','insurance'),('PRD01067','Kansas City Life Insurance Company','Stock','Orange','NasdaqSC','0','0','0','0','insurance'),('PRD01068','North Coast Life Insurance Company','Stock','Orange','NasdaqSC','0','0','0','0','insurance'),('PRD01069','Terra Nova Insurance Holdings PLC','Corporate Bond','Orange','NYSE','0','0','0','0',NULL),('PRD01070','21st Century Insurance Group','Stock','Orange','NYSE','0','0','0','0','insurance'),('PRD01071','White Mountains Insurance Group','Stock','Orange','NYSE','0','0','0','0','insurance'),('PRD01072','Zenith National Insurance Corporation','Stock','Orange','NYSE','0','0','0','0','insurance'),('PRD01073','Industrial-Alliance Life Insurance Company','Stock','Orange','Toronto','0','0','0','0','insurance'),('PRD01074','Southern Security Life Insurance Company','Stock','Orange','NasdaqSC','0','0','0','0','insurance'),('PRD01075','Metropolitan Financial Corporation','Stock','Orange','NasdaqNM','0','0','0','0',NULL),('PRD01076','Boston Life Sciences Incorporated','Stock','Orange','NasdaqNM','0','0','0','0','biotechnology'),('PRD01077','Integra Bank Corporation','Stock','Orange','NasdaqNM','0','0','0','0','banking'),('PRD01078','Patriot Bank Corporation','Stock','Orange','NasdaqNM','0','0','0','0','banking'),('PRD01079','Citizens Banking Corporation','Stock','MMFinan','NasdaqNM','0','0','0','0','banking'),('PRD01080','Charter Communications, Incorporated','Stock','MMFinan','NasdaqNM','0','0','1','0','cable television'),('PRD01081','Emmis Communications Corporation','Stock','MMFinan','NasdaqNM','0','0','0','0','broadcasting'),('PRD01082','Nextel Communications, Incorporated','Stock','MMFinan','NasdaqNM','0','1','1','0','communications'),('PRD01083','AOL-Time Warner, Incorporated','Stock','MMFinan','NYSE','0','1','0','1','internet service'),('PRD01084','A. G. Edwards Incorporated','Stock','MMFinan','NYSE','0','0','0','0','financial services'),('PRD01085','Yahoo Incorporated','Stock','MMFinan','NasdaqNM','0','1','1','1','internet service'),('PRD01086','Earthlink Incorporated','Stock','MMFinan','NasdaqNM','0','0','0','1','internet service'),('PRD01087','Northrop Grumman Systems Corporation','Stock','MMFinan','NYSE','0','1','0','0','defense'),('PRD01088','Novell Incorporated','Stock','MMFinan','NasdaqNM','0','1','0','1','computer software'),('PRD01089','Amazon.com, Incorporated','Stock','MMFinan','NasdaqNM','0','0','1','1','internet retailer'),('PRD01090','Juniper Networks, Incorporated','Stock','MMFinan','NasdaqNM','0','0','1','1',NULL),('PRD01091','Red Hat, Incorporated','Stock','MMFinan','NasdaqNM','0','0','0','1',NULL),('PRD01092','Boston Scientific Corporation','Stock','MMFinan','NYSE','0','1','0','0','medical supplies'),('PRD01093','Inex Pharmaceuticals, Incorporated','Stock','MMFinan','Toronto','0','0','0','0','pharmaceuticals'),('PRD01094','Triangle Pharmaceuticals, Incorporated','Stock','MMFinan','NasdaqNM','0','0','0','0','pharmaceuticals'),('PRD01095','Cytovax Biotechnologies Incorporated','Stock','MMFinan','Toronto','0','0','0','0','biotechnology'),('PRD01096','Commonwealth Biotechnologies, Incorporated','Stock','MMFinan','NasdaqSC','0','0','0','0','biotechnology'),('PRD01097','British Biotechnology plc','Stock','MMFinan','NasdaqNM','0','0','0','0','pharmaceuticals'),('PRD01098','SBC Communications Incorporated','Stock','MMFinan','NYSE','1','1','0','0','communications'),('PRD01099','Honeywell International','Stock','MMFinan','NYSE','1','1','0','0',NULL),('PRD01100','Hilton Hotels Corporation','Stock','MMFinan','NYSE','0','1','0','0','resorts'),('PRD01101','Hilton Hotels Corporation','Corporate Bond','MMFinan','NYSE','0','0','0','0',NULL),('PRD01102','Mercury Interactive Corporation','Stock','MMFinan','NasdaqNM','0','1','1','0','computer software');

INSERT INTO productsymbols VALUES ('PRD01002','1','BA','097023105'),('PRD01003','1','MON','61166W101'),('PRD01004','1','ORCL','68389X105'),('PRD01005','1','SY','871130100'),('PRD01006','1','MSFT','594918104'),('PRD01007','1','IBM','459200101'),('PRD01008','1','DELL','247025109'),('PRD01009','1','HWP0J17',NULL),('PRD01010','1','HPQ','428236103'),('PRD01011','1','GTW','367626108'),('PRD01012','1','GE','369604103'),('PRD01013','1','MRK','589331107'),('PRD01014','1','DIS','254687106'),('PRD01015','1','MCD','580135101'),('PRD01016','1','DOW','260543103'),('PRD01017','1','GMA0AI02',NULL),('PRD01018','1','GM','370442105'),('PRD01019','1','GM.TO',NULL),('PRD01020','1','PSFT','712713106'),('PRD01021','1','RATL','75409P202'),('PRD01022','1','SUNW','866810104'),('PRD01023','1','HMT','44107P104'),('PRD01024','1','SBGI','829226109'),('PRD01025','1','COLM','198516106'),('PRD01026','1','COLB','197236102'),('PRD01027','1','BSY6B09',NULL),('PRD01028','1','BSY','111013108'),('PRD01029','1','CSVFX','198526105'),('PRD01030','1','CMTFX','198545105'),('PRD01031','1','F','345370860'),('PRD01032','1','FMCR6K08',NULL),('PRD01033','1','FCZ','345397202'),('PRD01034','1','SAP','803054204'),('PRD01035','1','SAP.TO',NULL),('PRD01036','1','TM','892331307'),('PRD01037','1','TYMC5A03',NULL),('PRD01038','1','HMC','438128308'),('PRD01039','1','LMT','539830109'),('PRD01040','1','FSBI','315831107'),('PRD01041','1','EPGAX','315805853'),('PRD01042','1','FABTX','315918672'),('PRD01043','1','FACDX','315918847'),('PRD01044','1','FAFDX','315918813'),('PRD01045','1','FNIS','31620P109'),('PRD01046','1','LLY','532457108'),('PRD01047','1','PALM','696642107'),('PRD01048','1','HNZ','423074103'),('PRD01049','1','KO','191216100'),('PRD01050','1','PEP','713448108'),('PRD01051','1','MACPX','590192100'),('PRD01052','1','MADRX','59019V108'),('PRD01053','1','MADVX','589927201'),('PRD01054','1','MAFGX','589958107'),('PRD01055','1','MAGGX','59020J100'),('PRD01056','1','MAGTX','589983105'),('PRD01057','1','CNSAX','616960100'),('PRD01058','1','CPOAX','61747T106'),('PRD01059','1','DGRAX','616937108'),('PRD01060','1','BINBX','616959201'),('PRD01061','1','GRTAX','616922100'),('PRD01062','1','DWLTX','616974101'),('PRD01063','1','Q','749121109'),('PRD01064','1','ANAT','028591105'),('PRD01065','1','NWLIA','638522102'),('PRD01066','1','CSLI','221774102'),('PRD01067','1','KCLI','484836101'),('PRD01068','1','NCLIP','658654207'),('PRD01069','1','TNA7E08',NULL),('PRD01070','1','TW','90130N103'),('PRD01071','1','WTM','G9618E107'),('PRD01072','1','ZNT','989390109'),('PRD01073','1','IAG.TO',NULL),('PRD01074','1','SSLI','843805102'),('PRD01075','1','METF','59189N108'),('PRD01076','1','BLSI','100843408'),('PRD01077','1','IBNK','45814P105'),('PRD01078','1','PBIX','70335P103'),('PRD01079','1','CBCF','174420109'),('PRD01080','1','CHTR','16117M107'),('PRD01081','1','EMMS','291525103'),('PRD01082','1','NXTL','65332V103'),('PRD01083','1','AOL','00184A105'),('PRD01084','1','AGE','281760108'),('PRD01085','1','YHOO','984332106'),('PRD01086','1','ELNK','270321102'),('PRD01087','1','NOC','666807102'),('PRD01088','1','NOVL','670006105'),('PRD01089','1','AMZN','023135106'),('PRD01090','1','JNPR','48203R104'),('PRD01091','1','RHAT','756577102'),('PRD01092','1','BSX','101137107'),('PRD01093','1','IEX.TO',NULL),('PRD01094','1','VIRS','89589H104'),('PRD01095','1','CXB.TO',NULL),('PRD01096','1','CBTE','202739108'),('PRD01097','1','BBIOD','110515202'),('PRD01098','1','SBC','78387G103'),('PRD01099','1','HON','438516106'),('PRD01100','1','HLT','432848109'),('PRD01101','1','HLT5E06',NULL),('PRD01102','1','MERQ','589405109');
