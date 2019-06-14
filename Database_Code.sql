---- Create LOAN Table ----

CREATE TABLE LOANS (
Assigned_ID int PRIMARY KEY,
Year int NOT NULL,
Bank varchar NOT NULL,
IncRat numeric NOT NULL,
UPB numeric NOT NULL,
LTV numeric NOT NULL,
MortDate int NOT NULL,
Purpose int NOT NULL,
Product int NOT NULL,
FedGar int NOT NULL,
Front numeric NOT NULL,
Back numeric NOT NULL,
BoCreditScor numeric NOT NULL,
CoBoCreditScor numeric NOT NULL
);


----- psql CLI Commands for Importing Data to Remote Database ----
\copy loans from '2015_PUDB_EXPORT.csv' (format csv, header true, encoding 'UTF8');
\copy loans from '2016_PUDB_EXPORT.csv' (format csv, header true, encoding 'UTF8');
\copy loans from '2017_PUDB_EXPORT.csv' (format csv, header true, encoding 'UTF8');
