set schema 'public';

DROP TABLE IF EXISTS "AGENTS_PRIMARY";
DROP TABLE IF EXISTS "AGENTS_SECONDARY";

CREATE TABLE IF NOT EXISTS "AGENTS_PRIMARY"
(
    "AGENT_CODE" CHAR(6) NOT NULL PRIMARY KEY,
    "AGENT_NAME" CHAR(40),
    "CITY" CHAR(40),
    "COMMISSION" decimal,
    "ID" CHAR(40),
    "COUNTRY" CHAR(25)
    );

CREATE TABLE IF NOT EXISTS "AGENTS_SECONDARY"
(
    "AGENT_CODE" CHAR(6) NOT NULL PRIMARY KEY,
    "AGENT_NAME" CHAR(40),
    "CITY" CHAR(40),
    "COMMISSION" decimal,
    "ID" CHAR(40),
    "COUNTRY" CHAR(25)
    );

INSERT INTO "AGENTS_PRIMARY"
VALUES ('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', ''),
       ('A003', 'Alex ', 'London', 0.13, '075-12458969', ''),
       ('A008', 'Alford', 'New York', 0.12, '044-25874365', ''),
       ('A011', 'Ravi Kumar', 'Bangalore', 0.15, '077-45625874', ''),
       ('A010', 'Santakumar', 'Chennai', 0.14, '007-22388644', ''),
       ('A012', 'Lucida', 'San Jose', 0.12, '044-52981425', ''),
       ('A005', 'Anderson', 'Brisban', 0.13, '045-21447739', '');


INSERT INTO "AGENTS_SECONDARY"
VALUES ('A012', 'Lucida', 'San Jose', 0.12, '044-52981425', ''),
       ('A005', 'Anderson', 'Brisban', 0.13, '045-21447739', ''),
       ('A001', 'Subbarao', 'Bangalore', 0.14, '077-12346674', ''),
       ('A002', 'Mukesh', 'Mumbai', 0.11, '029-12358964', ''),
       ('A006', 'McDen', 'London', 0.15, '078-22255588', ''),
       ('A004', 'Ivan', 'Torento', 0.15, '008-22544166', ''),
       ('A009', 'Benjamin', 'Hampshair', 0.11, '008-22536178', '');

SELECT * FROM "AGENTS_PRIMARY" "AGP"
                  LEFT JOIN "CUSTOMER" "CUST"
                            ON "AGP"."AGENT_CODE" = "CUST"."AGENT_CODE";

SELECT * FROM  "CUSTOMER" "CUST"
                   RIGHT JOIN "AGENTS_PRIMARY" "AGP"
                              ON "AGP"."AGENT_CODE" = "CUST"."AGENT_CODE";

SELECT * FROM "AGENTS_PRIMARY" "AGP"
                  INNER JOIN "CUSTOMER" "CUST"
                             ON "AGP"."AGENT_CODE" = "CUST"."AGENT_CODE";

SELECT * FROM "AGENTS_PRIMARY" "AGP"
                  FULL JOIN "CUSTOMER" "CUST"
                            ON "AGP"."AGENT_CODE" = "CUST"."AGENT_CODE";

SELECT * FROM "AGENTS_PRIMARY" "AGP"
UNION
SELECT * FROM "AGENTS_SECONDARY" "AGS";