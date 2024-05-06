create or replace TABLE IDNEDW_INTEGRATION.EDW_VW_RPT_ID_POS_SALES_STOCK (
	SAP_CNTRY_CD VARCHAR(2),
	SAP_CNTRY_NM VARCHAR(9),
	DATASET VARCHAR(7),
	DSTRBTR_GRP_CD VARCHAR(25),
	YEAR VARCHAR(10),
	YEARMONTH VARCHAR(10),
	CUSTOMER_BRNCH_CODE VARCHAR(100),
	CUSTOMER_BRNCH_NAME VARCHAR(100),
	CUSTOMER_STORE_CODE VARCHAR(50),
	CUSTOMER_STORE_NAME VARCHAR(100),
	CUSTOMER_FRANCHISE VARCHAR(210),
	CUSTOMER_BRAND VARCHAR(50),
	CUSTOMER_PRODUCT_CODE VARCHAR(200),
	CUSTOMER_PRODUCT_DESC VARCHAR(251),
	JJ_SAP_PROD_ID VARCHAR(50),
	BRAND VARCHAR(50),
	BRAND2 VARCHAR(50),
	SKU_SALES_CUBE VARCHAR(200),
	CUSTOMER_PRODUCT_RANGE VARCHAR(100),
	CUSTOMER_PRODUCT_GROUP VARCHAR(110),
	CUSTOMER_STORE_CLASS VARCHAR(50),
	CUSTOMER_STORE_CHANNEL VARCHAR(50),
	SALES_QTY NUMBER(18,2),
	SALES_VALUE NUMBER(37,2),
	SERVICE_LEVEL NUMBER(10,2),
	SALES_ORDER NUMBER(18,2),
	SHARE NUMBER(10,2),
	STORE_STOCK_QTY NUMBER(19,2),
	STORE_STOCK_VALUE NUMBER(37,2),
	BRANCH_STOCK_QTY NUMBER(19,2),
	BRANCH_STOCK_VALUE NUMBER(37,2),
	STOCK_UOM VARCHAR(10),
	STOCK_DAYS NUMBER(10,4),
	CRTD_DTTM TIMESTAMP_NTZ(9)
);


create or replace TABLE IDNEDW_INTEGRATION.EDW_RPT_ID_SELLIN_ANALYSIS (
	BILL_DT DATE,
	BILL_DOC VARCHAR(100),
	JJ_YEAR NUMBER(18,0),
	JJ_QRTR VARCHAR(24),
	JJ_MNTH_ID NUMBER(18,0),
	JJ_MNTH VARCHAR(25),
	JJ_MNTH_DESC VARCHAR(20),
	JJ_MNTH_NO NUMBER(18,0),
	JJ_MNTH_LONG VARCHAR(75),
	DSTRBTR_GRP_CD VARCHAR(25),
	DSTRBTR_GRP_NM VARCHAR(155),
	JJ_SAP_DSTRBTR_ID VARCHAR(75),
	JJ_SAP_DSTRBTR_NM VARCHAR(75),
	DSTRBTR_CD_NM VARCHAR(72),
	AREA VARCHAR(50),
	REGION VARCHAR(50),
	BDM_NM VARCHAR(50),
	RBM_NM VARCHAR(50),
	DSTRBTR_STATUS VARCHAR(50),
	JJ_SAP_PROD_ID VARCHAR(50),
	JJ_SAP_PROD_DESC VARCHAR(100),
	JJ_SAP_UPGRD_PROD_ID VARCHAR(50),
	JJ_SAP_UPGRD_PROD_DESC VARCHAR(100),
	JJ_SAP_CD_MP_PROD_ID VARCHAR(50),
	JJ_SAP_CD_MP_PROD_DESC VARCHAR(100),
	SAP_PROD_CODE_NAME VARCHAR(152),
	FRANCHISE VARCHAR(75),
	BRAND VARCHAR(75),
	SKU_GRP_OR_VARIANT VARCHAR(50),
	SKU_GRP1_OR_VARIANT1 VARCHAR(50),
	SKU_GRP2_OR_VARIANT2 VARCHAR(50),
	SKU_GRP3_OR_VARIANT3 VARCHAR(62),
	PROD_STATUS VARCHAR(50),
	SELLIN_QTY NUMBER(18,4),
	SELLIN_VAL NUMBER(18,4),
	GROSS_SELLIN_VAL NUMBER(18,4)
);

create or replace TABLE IDNEDW_INTEGRATION.EDW_PRODUCT_DIM (
	JJ_SAP_PROD_ID VARCHAR(50),
	JJ_SAP_PROD_DESC VARCHAR(100),
	FRANCHISE VARCHAR(50),
	BRAND VARCHAR(50),
	VARIANT1 VARCHAR(50),
	VARIANT2 VARCHAR(50),
	VARIANT3 VARCHAR(50),
	STATUS VARCHAR(50),
	PUT_UP NUMBER(18,0),
	UOM NUMBER(18,0),
	JJ_SAP_UPGRD_PROD_ID VARCHAR(50),
	JJ_SAP_UPGRD_PROD_DESC VARCHAR(100),
	PRICE NUMBER(18,0),
	PROD_CLASS NUMBER(18,0),
	JJ_SAP_CD_MP_PROD_ID VARCHAR(50),
	JJ_SAP_CD_MP_PROD_DESC VARCHAR(100),
	PRICE_VMR NUMBER(18,0),
	PFT_SM VARCHAR(60),
	PFT_MM VARCHAR(60),
	PFT_WS VARCHAR(60),
	PFT_PROV VARCHAR(60),
	PFT_DS VARCHAR(60),
	PFT_MWS VARCHAR(60),
	PFT_APT VARCHAR(60),
	PFT_BS VARCHAR(60),
	PFT_CS VARCHAR(60),
	CRTD_DTTM TIMESTAMP_NTZ(9),
	UPTD_DTTM TIMESTAMP_NTZ(9),
	EFFECTIVE_FROM VARCHAR(10),
	EFFECTIVE_TO VARCHAR(10)
);


create or replace view IDNEDW_ACCESS.SDL_MDS_ID_LAV_PRODUCT_HIERARCHY(
	"id",
	"muid",
	"versionname",
	"versionnumber",
	"version_id",
	"versionflag",
	"name",
	"code",
	"changetrackingmask",
	"sap_code",
	"sku_description",
	"franchise",
	"brand",
	"variant1",
	"variant2",
	"variant3",
	"status",
	"put_up",
	"uom",
	"sap_upgrade",
	"sku_description2",
	"price",
	"sku_class",
	"sap_code_mapping",
	"sku_description3",
	"enterdatetime",
	"enterusername",
	"enterversionnumber",
	"lastchgdatetime",
	"lastchgusername",
	"lastchgversionnumber",
	"validationstatus",
	"effective_from",
	"effective_to"
) as
select id as "id",
    muid as "muid",
    versionname as "versionname",
    versionnumber as "versionnumber",
    version_id as "version_id",
    versionflag as "versionflag",
    name as "name",
    code as "code",
    changetrackingmask as "changetrackingmask",
    sap_code as "sap_code",
    sku_description as "sku_description",
    franchise as "franchise",
    brand as "brand",
    variant1 as "variant1",
    variant2 as "variant2",
    variant3 as "variant3",
    status as "status",
    put_up as "put_up",
    uom as "uom",
    sap_upgrade as "sap_upgrade",
    sku_description2 as "sku_description2",
    price as "price",
    sku_class as "sku_class",
    sap_code_mapping as "sap_code_mapping",
    sku_description3 as "sku_description3",
    enterdatetime as "enterdatetime",
    enterusername as "enterusername",
    enterversionnumber as "enterversionnumber",
    lastchgdatetime as "lastchgdatetime",
    lastchgusername as "lastchgusername",
    lastchgversionnumber as "lastchgversionnumber",
    validationstatus as "validationstatus",
    effective_from as "effective_from",
    effective_to as "effective_to"
from prod_dna_load.idnsdl_raw.sdl_mds_id_lav_product_hierarchy;

create or replace view IDNEDW_ACCESS.SDL_MDS_ID_LAV_MCS_LIST(
	"id",
	"muid",
	"versionname",
	"versionnumber",
	"version_id",
	"versionflag",
	"name",
	"code",
	"changetrackingmask",
	"tiering",
	"sku",
	"year",
	"january",
	"february",
	"march",
	"april",
	"may",
	"june",
	"july",
	"august",
	"september",
	"october",
	"november",
	"december",
	"enterdatetime",
	"enterusername",
	"enterversionnumber",
	"lastchgdatetime",
	"lastchgusername",
	"lastchgversionnumber",
	"validationstatus",
	"rownum"
) as
select id as "id",
muid as "muid",
versionname as "versionname",
versionnumber as "versionnumber",
version_id as "version_id",
versionflag as "versionflag",
name as "name",
code as "code",
changetrackingmask as "changetrackingmask",
tiering as "tiering",
sku as "sku",
year as "year",
january as "january",
february as "february",
march as "march",
april as "april",
may as "may",
june as "june",
july as "july",
august as "august",
september as "september",
october as "october",
november as "november",
december as "december",
enterdatetime as "enterdatetime",
enterusername as "enterusername",
enterversionnumber as "enterversionnumber",
lastchgdatetime as "lastchgdatetime",
lastchgusername as "lastchgusername",
lastchgversionnumber as "lastchgversionnumber",
validationstatus as "validationstatus",
rownum as "rownum"
from prod_dna_load.idnsdl_raw.SDL_MDS_ID_LAV_MCS_LIST
;

create or replace view IDNEDW_ACCESS.EDW_VW_RPT_ID_POS_SALES_STOCK(
	"sap_cntry_cd",
	"sap_cntry_nm",
	"dataset",
	"dstrbtr_grp_cd",
	"year",
	"yearmonth",
	"customer_brnch_code",
	"customer_brnch_name",
	"customer_store_code",
	"customer_store_name",
	"customer_franchise",
	"customer_brand",
	"customer_product_code",
	"customer_product_desc",
	"jj_sap_prod_id",
	"brand",
	"brand2",
	"sku_sales_cube",
	"customer_product_range",
	"customer_product_group",
	"customer_store_class",
	"customer_store_channel",
	"sales_qty",
	"sales_value",
	"service_level",
	"sales_order",
	"share",
	"store_stock_qty",
	"store_stock_value",
	"branch_stock_qty",
	"branch_stock_value",
	"stock_uom",
	"stock_days",
	"crtd_dttm"
) as (	
SELECT 
sap_cntry_cd AS "sap_cntry_cd",
sap_cntry_nm AS "sap_cntry_nm",
dataset AS "dataset",
dstrbtr_grp_cd AS "dstrbtr_grp_cd",
year AS "year",
yearmonth AS "yearmonth",
customer_brnch_code AS "customer_brnch_code",
customer_brnch_name AS "customer_brnch_name",
customer_store_code AS "customer_store_code",
customer_store_name AS "customer_store_name",
customer_franchise AS "customer_franchise",
customer_brand AS "customer_brand",
customer_product_code AS "customer_product_code",
customer_product_desc AS "customer_product_desc",
jj_sap_prod_id AS "jj_sap_prod_id",
brand AS "brand",
brand2 AS "brand2",
sku_sales_cube AS "sku_sales_cube",
customer_product_range AS "customer_product_range",
customer_product_group AS "customer_product_group",
customer_store_class AS "customer_store_class",
customer_store_channel AS "customer_store_channel",
sales_qty AS "sales_qty",
sales_value AS "sales_value",
service_level AS "service_level",
sales_order AS "sales_order",
share AS "share",
store_stock_qty AS "store_stock_qty",
store_stock_value AS "store_stock_value",
branch_stock_qty AS "branch_stock_qty",
branch_stock_value AS "branch_stock_value",
stock_uom AS "stock_uom",
stock_days AS "stock_days",
crtd_dttm AS "crtd_dttm"
FROM IDNEDW_INTEGRATION.EDW_VW_RPT_ID_POS_SALES_STOCK
);

create or replace view IDNEDW_ACCESS.EDW_RPT_ID_SELLIN_ANALYSIS(
	"bill_dt",
	"bill_doc",
	"jj_year",
	"jj_qrtr",
	"jj_mnth_id",
	"jj_mnth",
	"jj_mnth_desc",
	"jj_mnth_no",
	"jj_mnth_long",
	"dstrbtr_grp_cd",
	"dstrbtr_grp_nm",
	"jj_sap_dstrbtr_id",
	"jj_sap_dstrbtr_nm",
	"dstrbtr_cd_nm",
	"area",
	"region",
	"bdm_nm",
	"rbm_nm",
	"dstrbtr_status",
	"jj_sap_prod_id",
	"jj_sap_prod_desc",
	"jj_sap_upgrd_prod_id",
	"jj_sap_upgrd_prod_desc",
	"jj_sap_cd_mp_prod_id",
	"jj_sap_cd_mp_prod_desc",
	"sap_prod_code_name",
	"franchise",
	"brand",
	"sku_grp_or_variant",
	"sku_grp1_or_variant1",
	"sku_grp2_or_variant2",
	"sku_grp3_or_variant3",
	"prod_status",
	"sellin_qty",
	"sellin_val",
	"gross_sellin_val"
) as (
select
bill_dt as "bill_dt",
bill_doc as "bill_doc",
jj_year as "jj_year",
jj_qrtr as "jj_qrtr",
jj_mnth_id as "jj_mnth_id",
jj_mnth as "jj_mnth",
jj_mnth_desc as "jj_mnth_desc",
jj_mnth_no as "jj_mnth_no",
jj_mnth_long as "jj_mnth_long",
dstrbtr_grp_cd as "dstrbtr_grp_cd",
dstrbtr_grp_nm as "dstrbtr_grp_nm",
jj_sap_dstrbtr_id as "jj_sap_dstrbtr_id",
jj_sap_dstrbtr_nm as "jj_sap_dstrbtr_nm",
dstrbtr_cd_nm as "dstrbtr_cd_nm",
area as "area",
region as "region",
bdm_nm as "bdm_nm",
rbm_nm as "rbm_nm",
dstrbtr_status as "dstrbtr_status",
jj_sap_prod_id as "jj_sap_prod_id",
jj_sap_prod_desc as "jj_sap_prod_desc",
jj_sap_upgrd_prod_id as "jj_sap_upgrd_prod_id",
jj_sap_upgrd_prod_desc as "jj_sap_upgrd_prod_desc",
jj_sap_cd_mp_prod_id as "jj_sap_cd_mp_prod_id",
jj_sap_cd_mp_prod_desc as "jj_sap_cd_mp_prod_desc",
sap_prod_code_name as "sap_prod_code_name",
franchise as "franchise",
brand as "brand",
sku_grp_or_variant as "sku_grp_or_variant",
sku_grp1_or_variant1 as "sku_grp1_or_variant1",
sku_grp2_or_variant2 as "sku_grp2_or_variant2",
sku_grp3_or_variant3 as "sku_grp3_or_variant3",
prod_status as "prod_status",
sellin_qty as "sellin_qty",
sellin_val as "sellin_val",
gross_sellin_val as "gross_sellin_val"
from IDNEDW_INTEGRATION.EDW_RPT_ID_SELLIN_ANALYSIS
);
