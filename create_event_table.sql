-- PostgresQL script file for creating the database event interface table, schema version 2

/****** Database event table ******/
DROP TABLE IF EXISTS DB_EVENT;

CREATE TABLE DB_EVENT (
	EVENT_KEY bigint GENERATED ALWAYS AS IDENTITY,
	SOURCE_ID varchar(128) NOT NULL,
	IN_VALUE varchar(64) NOT NULL,
	EVENT_TIME timestamp(3) NULL,
	EVENT_TIME_OFFSET int NULL,
	STATUS varchar(16) NOT NULL,
	ERROR varchar(512) NULL,
	REASON varchar(64) NULL,
    CONSTRAINT PK_DB_EVT_KEY PRIMARY KEY(EVENT_KEY)
);	
CREATE INDEX IDX_EVT_STATUS ON DB_EVENT (STATUS);	