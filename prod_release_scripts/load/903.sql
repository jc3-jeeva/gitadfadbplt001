create or replace TABLE PROD_DNA_LOAD.NTASDL_RAW.SDL_TW_POS_AMART_PURCHASE (
	STORE_CODE VARCHAR(40),
	PURCHASE_DATE VARCHAR(100),
	PRODUCT_CODE VARCHAR(40),
	PRODUCT_NAME VARCHAR(40),
	PURCHASE_QTY NUMBER(18,0),
	CRT_DTTM TIMESTAMP_NTZ(9),
	UPD_DTTM TIMESTAMP_NTZ(9),
	FILENAME VARCHAR(100)
);

create or replace TABLE PROD_DNA_LOAD.NTASDL_RAW.SDL_TW_POS_AMART_INVENTORY (
	ITEM_CODE VARCHAR(50),
	ITEM_DESC VARCHAR(255),
	CUSTOMER_CODE VARCHAR(50),
	CUSTOMER VARCHAR(255),
	MNTH_ID VARCHAR(50),
	INVENTORY_QTY NUMBER(18,0),
	TOTAL_QTY NUMBER(18,0),
	DC_QTY NUMBER(18,0),
	_701 NUMBER(18,0),
	_711 NUMBER(18,0),
	_713 NUMBER(18,0),
	_716 NUMBER(18,0),
	_717 NUMBER(18,0),
	_718 NUMBER(18,0),
	_719 NUMBER(18,0),
	_721 NUMBER(18,0),
	_724 NUMBER(18,0),
	_725 NUMBER(18,0),
	_726 NUMBER(18,0),
	_727 NUMBER(18,0),
	_728 NUMBER(18,0),
	_729 NUMBER(18,0),
	_731 NUMBER(18,0),
	CRT_DTTM TIMESTAMP_NTZ(9),
	UPD_DTTM TIMESTAMP_NTZ(9),
	FILE_NAME VARCHAR(255)
);


COPY INTO PROD_DNA_LOAD.NTASDL_RAW.SDL_TW_POS_AMART_PURCHASE
  FROM @PROD_DNA_LOAD.NTASDL_RAW.PROD_LOAD_STAGE_ADLS_TWN/prd/pos/transaction/amart_purchase.csv
FILE_FORMAT = (TYPE = CSV FIELD_DELIMITER = ','  SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '\"' );

COPY INTO PROD_DNA_LOAD.NTASDL_RAW.SDL_TW_POS_AMART_INVENTORY
  FROM @PROD_DNA_LOAD.NTASDL_RAW.PROD_LOAD_STAGE_ADLS_TWN/prd/pos/transaction/amart_inventory.csv
FILE_FORMAT = (TYPE = CSV FIELD_DELIMITER = ','  SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '\"' );
