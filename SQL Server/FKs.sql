-- CREATE FK
ALTER TABLE TABLE_NAME
ADD CONSTRAINT CONSTRAINT_NAME
FOREIGN KEY (FK) REFERENCES TABLE_NAME(PK);

-- CREATE UC CONSTRAINT
ALTER TABLE TABLE_NAME
ADD CONSTRAINT CONSTRAINT_NAME UNIQUE (column1,column2,..);