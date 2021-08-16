CREATE TABLE customer(cid INT PRIMARY KEY,cname VARCHAR(25) NOT NULL,loc VARCHAR(25),sex VARCHAR(25),dob  DATE );

drop table customer;

CREATE TABLE bank_brn
	(bcode   INT PRIMARY KEY,bloc VARCHAR(25) NOT NULL,bstate VARCHAR(25) NOT NULL);
    
    drop table  bank_brn;
    
CREATE TABLE deposit
	(Dacno   INT PRIMARY KEY,ddate DATE NOT NULL,damt   INT NOT NULL, dtype VARCHAR(25) NOT NULL);
    
    drop table deposit;
    
CREATE TABLE loan
	(Lacno   INT PRIMARY KEY,ldate DATE NOT NULL,lamt   INT NOT NULL, ltype VARCHAR(25) NOT NULL);
 
 drop table loan;
 
CREATE TABLE accounts_in
	(cid   INT NOT NULL, Bcode INT NOT NULL, FOREIGN KEY(Bcode) REFERENCES bank_brn(bcode), FOREIGN KEY(cid) REFERENCES customer(cid));

drop table  accounts_in;

CREATE TABLE depositor
	(cid   INT NOT NULL, dacno INT NOT NULL, FOREIGN KEY(dacno) REFERENCES deposit(Dacno), FOREIGN KEY(cid) REFERENCES customer(cid));
    
drop table depositor;

CREATE TABLE borrower
	(cid   INT NOT NULL, lacno INT NOT NULL, FOREIGN KEY(lacno) REFERENCES loan(Lacno), FOREIGN KEY(cid) REFERENCES customer(cid));
    
drop table borrower;

DESCRIBE customer;
DESCRIBE bank.borrower;
show tables;
 DESCRIBE loan;
 DESCRIBE accounts_in;
