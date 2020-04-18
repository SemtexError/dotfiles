syntax keyword sqlModifier ISNULL CAST ROUND MIN getdate newid
syntax keyword sqlKeyword APPLY GO SELECT CONSTRAINT PRIMARY KEY NONCLUSTERED REFERENCES FOREIGN UNIQUEIDENTIFIER BIT BIGINT VARBINARY IDENTITY SERIAL
syntax match sqlAsIdentifier +\(AS\)\@<=\s\+\w\+\(\w\)\@<=+
syntax match sqlVariable +@\w\++
