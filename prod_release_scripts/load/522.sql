create or replace TABLE PROD_DNA_LOAD.JPNSDL_RAW.SDL_MDS_JP_C360_ENG_TRANSLATION (
	ID NUMBER(18,0),
	MUID VARCHAR(36),
	VERSIONNAME VARCHAR(100),
	VERSIONNUMBER NUMBER(18,0),
	VERSION_ID NUMBER(18,0),
	VERSIONFLAG VARCHAR(100),
	NAME VARCHAR(500),
	CODE VARCHAR(500),
	CHANGETRACKINGMASK NUMBER(18,0),
	NAME_JP VARCHAR(200),
	NAME_ENG VARCHAR(200),
	ENTERDATETIME TIMESTAMP_NTZ(9),
	ENTERUSERNAME VARCHAR(200),
	ENTERVERSIONNUMBER NUMBER(18,0),
	LASTCHGDATETIME TIMESTAMP_NTZ(9),
	LASTCHGUSERNAME VARCHAR(200),
	LASTCHGVERSIONNUMBER NUMBER(18,0),
	VALIDATIONSTATUS VARCHAR(500)
);
INSERT INTO META_RAW.HISTORICAL_OBJ_METADATA (ID,SOURCE_SCHEMA,SOURCE_TABLE, TARGET_DB,TARGET_SCHEMA,TARGET_TABLE,STAGE_SCHEMA,ISACTIVE,MARKET,TYPE_OF_LOAD,PRIORITY) VALUES (5019,'JP_EDW','VW_JAN_CHANGE','PROD_DNA_CORE','JPNEDW_INTEGRATION','VW_JAN_CHANGE','UTILITY_RAW',TRUE,'JPN','FULL_REFRESH',5);
INSERT INTO META_RAW.HISTORICAL_OBJ_METADATA (ID,SOURCE_SCHEMA,SOURCE_TABLE, TARGET_DB,TARGET_SCHEMA,TARGET_TABLE,STAGE_SCHEMA,ISACTIVE,MARKET,TYPE_OF_LOAD,PRIORITY) VALUES (5020,'JP_EDW','JP_INV_COVERAGE_AREA_REGION_MAPPING','PROD_DNA_CORE','JPNEDW_INTEGRATION','JP_INV_COVERAGE_AREA_REGION_MAPPING','UTILITY_RAW',TRUE,'JPN','FULL_REFRESH',1);
INSERT INTO META_RAW.HISTORICAL_OBJ_METADATA (ID,SOURCE_SCHEMA,SOURCE_TABLE, TARGET_DB,TARGET_SCHEMA,TARGET_TABLE,STAGE_SCHEMA,ISACTIVE,MARKET,TYPE_OF_LOAD,PRIORITY) VALUES (5021,'JP_EDW','MT_PRF','PROD_DNA_CORE','JPNEDW_INTEGRATION','MT_PRF','UTILITY_RAW',TRUE,'JPN','FULL_REFRESH',1);
INSERT INTO META_RAW.HISTORICAL_OBJ_METADATA (ID,SOURCE_SCHEMA,SOURCE_TABLE, TARGET_DB,TARGET_SCHEMA,TARGET_TABLE,STAGE_SCHEMA,ISACTIVE,MARKET,TYPE_OF_LOAD,PRIORITY) VALUES (5022,'JP_EDW','MT_SGMT','PROD_DNA_CORE','JPNEDW_INTEGRATION','MT_SGMT','UTILITY_RAW',TRUE,'JPN','FULL_REFRESH',1);
INSERT INTO META_RAW.HISTORICAL_OBJ_METADATA (ID,SOURCE_SCHEMA,SOURCE_TABLE, TARGET_DB,TARGET_SCHEMA,TARGET_TABLE,STAGE_SCHEMA,ISACTIVE,MARKET,TYPE_OF_LOAD,PRIORITY) VALUES (5023,'JP_EDW','EDI_CHN_M','PROD_DNA_CORE','JPNEDW_INTEGRATION','EDI_CHN_M','UTILITY_RAW',TRUE,'JPN','FULL_REFRESH',1);
INSERT INTO META_RAW.HISTORICAL_OBJ_METADATA (ID,SOURCE_SCHEMA,SOURCE_TABLE, TARGET_DB,TARGET_SCHEMA,TARGET_TABLE,STAGE_SCHEMA,ISACTIVE,MARKET,TYPE_OF_LOAD,PRIORITY) VALUES (5024,'JP_EDW','EDI_STORE_M','PROD_DNA_CORE','JPNEDW_INTEGRATION','EDI_STORE_M','UTILITY_RAW',TRUE,'JPN','FULL_REFRESH',1);
INSERT INTO META_RAW.HISTORICAL_OBJ_METADATA (ID,SOURCE_SCHEMA,SOURCE_TABLE, TARGET_DB,TARGET_SCHEMA,TARGET_TABLE,STAGE_SCHEMA,ISACTIVE,MARKET,TYPE_OF_LOAD,PRIORITY) VALUES (5025,'JP_EDW','EDI_CSTM_M','PROD_DNA_CORE','JPNEDW_INTEGRATION','EDI_CSTM_M','UTILITY_RAW',TRUE,'JPN','FULL_REFRESH',1);
INSERT INTO META_RAW.HISTORICAL_OBJ_METADATA (ID,SOURCE_SCHEMA,SOURCE_TABLE, TARGET_DB,TARGET_SCHEMA,TARGET_TABLE,STAGE_SCHEMA,ISACTIVE,MARKET,TYPE_OF_LOAD,PRIORITY) VALUES (5026,'JP_SDL','SDL_MDS_JP_C360_ENG_TRANSLATION','PROD_DNA_LOAD','JPNSDL_RAW','SDL_MDS_JP_C360_ENG_TRANSLATION','META_RAW',TRUE,'JPN','FULL_REFRESH',1);
