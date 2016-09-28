DROP TABLE IF EXISTS BROKERINFORMATION;
DROP TABLE IF EXISTS BROKERCUSTOMER;

CREATE TABLE BROKERINFORMATION (
  BrokerId varchar(15) NOT NULL,
  BrokerLastName varchar(25) NOT NULL,
  BrokerFirstName varchar(10) NOT NULL,
  PRIMARY KEY (BROKERID)
);

INSERT INTO BROKERINFORMATION VALUES ('B1231','Young','Andre'),('B1232','Broadus','Calvin'),('B1233','Townshend','Pete'),('B1234','Daddy','Puff'),('B1235','Carter','Shawn'),('B1236','','Prince'),('B1237','McEnroe','John');

CREATE TABLE BROKERCUSTOMER (
  BrokerId varchar(15) DEFAULT NULL,
  CustomerID varchar(15) DEFAULT NULL,
  FOREIGN KEY (BROKERID) REFERENCES BROKERINFORMATION (BROKERID)
);

INSERT INTO BROKERCUSTOMER VALUES ('B1234','CST01002'),('B1235','CST01007'),('B1233','CST01003'),('B1231','CST01006'),('B1232','CST01004'),('B1237','CST01009'),('B1236','CST01010'),('B1232','CST01011'),('B1237','CST01005'),('B1236','CST01012'),('B1236','CST01013'),('B1236','CST01016');
