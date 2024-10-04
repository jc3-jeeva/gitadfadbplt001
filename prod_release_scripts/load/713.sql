drop table IDNSDL_RAW.sdl_MDS_ID_distributor_customer_update_ADFTemp;
create or replace TABLE PROD_DNA_LOAD.IDNSDL_RAW.sdl_MDS_ID_distributor_customer_update_ADFTemp (
	ID NUMBER(18,0),
	MUID VARCHAR(36),
	VERSIONNAME VARCHAR(100),
	VERSIONNUMBER NUMBER(18,0),
	VERSION_ID NUMBER(18,0),
	VERSIONFLAG VARCHAR(100),
	NAME VARCHAR(500),
	CODE VARCHAR(500),
	CHANGETRACKINGMASK NUMBER(18,0),
	KEY_OUTLET VARCHAR(200),
	SALES_OFFICE_ID_JNJ VARCHAR(200),
	SALES_OFFICE VARCHAR(400),
	CUST_ID VARCHAR(200),
	CUST_NAME VARCHAR(400),
	ADDRESS VARCHAR(600),
	CITY VARCHAR(200),
	CUST_GROUP1 VARCHAR(400),
	CHANNEL VARCHAR(200),
	OUTLET_TYPE VARCHAR(200),
	CHANNEL_GROUP1 VARCHAR(200),
	JJID VARCHAR(200),
	POSTAL_CODE VARCHAR(200),
	CUST_ID_MAP VARCHAR(200),
	CUST_NAME_MAP VARCHAR(400),
	CHANNEL_GROUP2 VARCHAR(200),
	CREATE_DATE TIMESTAMP_NTZ(9),
	CUST_GROUP2 VARCHAR(400),
	EFFECTIVE_FROM VARCHAR(200),
	EFFECTIVE_TO VARCHAR(200),
	ADDITIONAL_INFORMATION_1_CODE VARCHAR(100),
	ADDITIONAL_INFORMATION_1_NAME VARCHAR(100),
	ADDITIONAL_INFORMATION_1_ID VARCHAR(100),
	ADDITIONAL_INFORMATION_2_CODE VARCHAR(100),
	ADDITIONAL_INFORMATION_2_NAME VARCHAR(100),
	ADDITIONAL_INFORMATION_2_ID VARCHAR(100),
	ADDITIONAL_INFORMATION_3_CODE VARCHAR(100),
	ADDITIONAL_INFORMATION_3_NAME VARCHAR(100),
	ADDITIONAL_INFORMATION_3_ID VARCHAR(100),
	ADDITIONAL_INFORMATION_4_CODE VARCHAR(100),
	ADDITIONAL_INFORMATION_4_NAME VARCHAR(100),
	ADDITIONAL_INFORMATION_4_ID VARCHAR(100),
	ADDITIONAL_INFORMATION_5_CODE VARCHAR(100),
	ADDITIONAL_INFORMATION_5_NAME VARCHAR(100),
	ADDITIONAL_INFORMATION_5_ID VARCHAR(100),
  ENTERDATETIME TIMESTAMP_NTZ(9),
	ENTERUSERNAME VARCHAR(200),
	ENTERVERSIONNUMBER NUMBER(18,0),
	LASTCHGDATETIME TIMESTAMP_NTZ(9),
	LASTCHGUSERNAME VARCHAR(200),
	LASTCHGVERSIONNUMBER NUMBER(18,0),
	VALIDATIONSTATUS VARCHAR(500)
);
