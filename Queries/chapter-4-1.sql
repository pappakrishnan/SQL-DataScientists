set schema 'public';

DROP TABLE IF EXISTS "AGENTS" CASCADE;
DROP TABLE IF EXISTS "CUSTOMER";

CREATE TABLE IF NOT EXISTS "AGENTS"
(
    "AGENT_CODE" CHAR(6) NOT NULL PRIMARY KEY,
    "AGENT_NAME" CHAR(40),
    "CITY" CHAR(40),
    "COMMISSION" decimal,
    "ID" CHAR(40),
    "COUNTRY" CHAR(25)
    );

CREATE TABLE  "CUSTOMER"
("CUST_CODE" CHAR(6) NOT NULL PRIMARY KEY,
 "CUST_NAME" CHAR(40) NOT NULL,
 "CUST_CITY" CHAR(35),
 "WORKING_AREA" CHAR(35) NOT NULL,
 "CUST_COUNTRY" CHAR(20) NOT NULL,
 "GRADE" DECIMAL,
 "OPENING_AMT" DECIMAL NOT NULL,
 "RECEIVE_AMT" DECIMAL NOT NULL,
 "PAYMENT_AMT" DECIMAL NOT NULL,
 "OUTSTANDING_AMT" DECIMAL NOT NULL,
 "PHONE_NO" CHAR(17) NOT NULL,
 "AGENT_CODE" CHAR(6) NOT NULL REFERENCES "AGENTS" ("AGENT_CODE")
);

select * from "AGENTS";


INSERT INTO "AGENTS"
VALUES ('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', ''),
       ('A003', 'Alex ', 'London', 0.13, '075-12458969', ''),
       ('A008', 'Alford', 'New York', 0.12, '044-25874365', ''),
       ('A011', 'Ravi Kumar', 'Bangalore', 0.15, '077-45625874', ''),
       ('A010', 'Santakumar', 'Chennai', 0.14, '007-22388644', ''),
       ('A012', 'Lucida', 'San Jose', 0.12, '044-52981425', ''),
       ('A005', 'Anderson', 'Brisban', 0.13, '045-21447739', ''),
       ('A001', 'Subbarao', 'Bangalore', 0.14, '077-12346674', ''),
       ('A002', 'Mukesh', 'Mumbai', 0.11, '029-12358964', ''),
       ('A006', 'McDen', 'London', 0.15, '078-22255588', ''),
       ('A004', 'Ivan', 'Torento', 0.15, '008-22544166', ''),
       ('A009', 'Benjamin', 'Hampshair', 0.11, '008-22536178', '');


CREATE TABLE  "CUSTOMER"
("CUST_CODE" CHAR(6) NOT NULL PRIMARY KEY,
 "CUST_NAME" CHAR(40) NOT NULL,
 "CUST_CITY" CHAR(35),
 "WORKING_AREA" CHAR(35) NOT NULL,
 "CUST_COUNTRY" CHAR(20) NOT NULL,
 "GRADE" DECIMAL,
 "OPENING_AMT" DECIMAL NOT NULL,
 "RECEIVE_AMT" DECIMAL NOT NULL,
 "PAYMENT_AMT" DECIMAL NOT NULL,
 "OUTSTANDING_AMT" DECIMAL NOT NULL,
 "PHONE_NO" CHAR(17) NOT NULL,
 "AGENT_CODE" CHAR(6) NOT NULL REFERENCES "AGENTS" ("AGENT_CODE")
);

INSERT INTO "CUSTOMER"
VALUES ('C00013', 'Holmes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003'),
       ('C00001', 'Micheal', 'New York', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008'),
       ('C00020', 'Albert', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008'),
       ('C00025', 'Ravindran', 'Bangalore', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011'),
       ('C00024', 'Cook', 'London', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006'),
       ('C00015', 'Stuart', 'London', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003'),
       ('C00002', 'Bolt', 'New York', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008'),
       ('C00018', 'Fleming', 'Brisban', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005'),
       ('C00021', 'Jacks', 'Brisban', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005'),
       ('C00019', 'Yearannaidu', 'Chennai', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010'),
       ('C00005', 'Sasikant', 'Mumbai', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002'),
       ('C00007', 'Ramanathan', 'Chennai', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010'),
       ('C00022', 'Avinash', 'Mumbai', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678','A002'),
       ('C00004', 'Winston', 'Brisban', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005'),
       ('C00023', 'Karl', 'London', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006'),
       ('C00006', 'Shilton', 'Torento', 'Torento', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004'),
       ('C00010', 'Charles', 'Hampshair', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009'),
       ('C00017', 'Srinivas', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007'),
       ('C00012', 'Steven', 'San Jose', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012'),
       ('C00008', 'Karolina', 'Torento', 'Torento', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004'),
       ('C00003', 'Martin', 'Torento', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004'),
       ('C00009', 'Ramesh', 'Mumbai', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002'),
       ('C00014', 'Rangarappa', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001'),
       ('C00016', 'Venkatpati', 'Bangalore', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007'),
       ('C00011', 'Sundariya', 'Chennai', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010');

SELECT * FROM "CUSTOMER";

-- Selecting data based on constraints -- WHERE

SELECT * FROM "AGENTS";

SELECT * FROM "AGENTS"
WHERE "COMMISSION" >= 0.15;

SELECT * FROM "CUSTOMER"
WHERE "OUTSTANDING_AMT" > 10000;

SELECT * FROM "CUSTOMER"
WHERE "OUTSTANDING_AMT" > 10000 AND "OPENING_AMT" < 8000;

-- IN
SELECT * FROM "AGENTS"
WHERE "CITY" IN ('Chennai', 'Bangalore', 'San Jose');

SELECT * FROM "CUSTOMER"
WHERE "CUST_COUNTRY" IN ('UK');

-- BETWEEN
SELECT * FROM "CUSTOMER"
WHERE "OUTSTANDING_AMT" BETWEEN 5000 and 10000;

SELECT * FROM "CUSTOMER"
WHERE  ("OUTSTANDING_AMT" BETWEEN 5000 and 10000) AND
        "CUST_COUNTRY" IN ('UK');

-- LIKE
SELECT * FROM "AGENTS"
WHERE "AGENT_CODE" LIKE '%A01%';

-- SORTING
-- ORDER BY
SELECT * FROM "CUSTOMER"
WHERE "OUTSTANDING_AMT" >5000
ORDER BY "OPENING_AMT" ASC;

SELECT * FROM "CUSTOMER"
WHERE "OUTSTANDING_AMT" >5000
ORDER BY "OPENING_AMT" DESC;

SELECT * FROM "CUSTOMER"
WHERE "OUTSTANDING_AMT" >5000
ORDER BY "OPENING_AMT" DESC
    LIMIT 5;

-- AGGREGATION
-- GROUP BY
SELECT "CUST_CITY", COUNT(1)
FROM "CUSTOMER"
GROUP BY "CUST_CITY";

SELECT "CUST_CITY", COUNT(1)
FROM "CUSTOMER"
GROUP BY "CUST_CITY"
ORDER BY COUNT(1) DESC;

-- WHERE AND HAVING
SELECT "CUST_CITY", COUNT(1)
FROM "CUSTOMER"
WHERE "OUTSTANDING_AMT" >5000
GROUP BY "CUST_CITY";

SELECT "CUST_CITY", COUNT(1)
FROM "CUSTOMER"
GROUP BY "CUST_CITY", "OUTSTANDING_AMT"
HAVING "OUTSTANDING_AMT" >5000;