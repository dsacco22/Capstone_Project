---- Create LOAN Table ----

CREATE TABLE LOANS2 (
Year int NOT NULL,
Assigned_ID int PRIMARY KEY,
Bank varchar NOT NULL,
IncRat numeric NOT NULL,
UPB numeric NOT NULL,
LTV numeric NOT NULL,
MortDate int NOT NULL,
Purpose int NOT NULL,
Coop int NOT NULL,
Product int NOT NULL,
FedGar int NOT NULL,
Occup int NOT NULL,
Front numeric NOT NULL,
Back numeric NOT NULL,
BoCreditScor numeric NOT NULL,
PropType varchar NOT NULL,
LTV_M numeric NOT NULL,
Purpose_M numeric NOT NULL,
Coop_M numeric NOT NULL,
Product_M numeric NOT NULL,
Occup_M numeric NOT NULL,
Back_M numeric NOT NULL,
BoCreditScor_M numeric NOT NULL,
PropType_M numeric NOT NULL,
Loan_Multiplier numeric NOT NULL
);


----- psql CLI Commands for Importing Data to Remote Database ----
\copy LOANS2 from '2015_PUDB_EXPORT.csv' (format csv, header true, encoding 'UTF8');
\copy LOANS2 from '2016_PUDB_EXPORT.csv' (format csv, header true, encoding 'UTF8');
\copy LOANS2 from '2017_PUDB_EXPORT.csv' (format csv, header true, encoding 'UTF8');
