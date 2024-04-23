create or replace TABLE PROD_DNA_LOAD.PCFSDL_RAW.SDL_MDS_PACIFIC_PROD_MAPPING_CWH (
	ID NUMBER(10,0),
	MUID VARCHAR(40),
	VERSIONNAME VARCHAR(100),
	VERSIONNUMBER NUMBER(10,0),
	VERSION_ID NUMBER(10,0),
	VERSIONFLAG VARCHAR(100),
	NAME VARCHAR(500),
	CODE VARCHAR(500),
	CHANGETRACKINGMASK NUMBER(10,0),
	JNJ_SAP_CODE NUMBER(28,0),
	DESCRIPTION VARCHAR(200),
	ENTERDATETIME TIMESTAMP_NTZ(9),
	ENTERUSERNAME VARCHAR(200),
	ENTERVERSIONNUMBER NUMBER(10,0),
	LASTCHGDATETIME TIMESTAMP_NTZ(9),
	LASTCHGUSERNAME VARCHAR(200),
	LASTCHGVERSIONNUMBER NUMBER(10,0),
	VALIDATIONSTATUS VARCHAR(500)
);
