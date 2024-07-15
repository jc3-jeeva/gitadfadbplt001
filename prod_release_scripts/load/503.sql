UPDATE PROD_DNA_LOAD.META_RAW.PARAMETERS SET PARAMETER_VALUE='otif/transaction/' WHERE PARAMETER_GROUP_ID=2001 AND PARAMETER_NAME='landing_file_path' and PARAMETER_ID=25002;
UPDATE PROD_DNA_LOAD.META_RAW.PARAMETERS SET PARAMETER_VALUE='OTIF_Server' WHERE PARAMETER_GROUP_ID=2001 AND PARAMETER_NAME='decide_source' and PARAMETER_ID=25007;
UPDATE PROD_DNA_LOAD.META_RAW.PARAMETERS SET PARAMETER_VALUE='ASPSDL_RAW' WHERE PARAMETER_GROUP_ID=2001 AND PARAMETER_NAME='target_schema' and PARAMETER_ID=25005;
UPDATE PROD_DNA_LOAD.META_RAW.PARAMETERS SET PARAMETER_VALUE='SELECT * FROM DELV.OTIF_D_CNSMR_ATTR_DETL 
WHERE CAST(FISC_YR_NBR AS INT) >= YEAR(GETDATE()) 
AND CAST((SUBSTRING(FISC_YR_MO_NUM,6,2))AS INT)>
(MONTH(GETDATE())-3);' WHERE PARAMETR_GROUP_ID=2001 AND PARAMETER_NAME='ms_query' and PARAMETER_ID=25008;
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25009,2001,'OTIFD_Data_Ingestion','map_names','N',FALSE,TRUE);
UPDATE PROD_DNA_LOAD.META_RAW.PROCESS SET SOURCE_ID=5 WHERE PROCESS_ID=2001 AND PARAMETER_GROUP_ID=2001;

INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25010,2002,'otif_etl_framework_ing','tempId','1',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25011,2002,'otif_etl_framework_ing','jobId','9083',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25012,2002,'otif_etl_framework_ing','accountId','99',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25013,2002,'otif_etl_framework_ing','waitTime','20',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25014,2002,'otif_etl_framework_ing','transformationType','ingestion',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25015,2002,'otif_etl_framework_ing','container','asp',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25016,2003,'otif_etl_framework_tran','tempId','1',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25017,2003,'otif_etl_framework_tran','jobId','9116',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25018,2003,'otif_etl_framework_tran','accountId','99',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25019,2003,'otif_etl_framework_tran','waitTime','20',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25020,2003,'otif_etl_framework_tran','transformationType','transformation',FALSE,TRUE);
INSERT INTO PROD_DNA_LOAD.META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (25021,2003,'otif_etl_framework_tran','container','asp',FALSE,TRUE);
 
 
INSERT INTO PROD_DNA_LOAD.META_RAW.PROCESS 
VALUES
(2002,2002,'otif_etl_framework_ing',2002,1,1,FALSE,TRUE,501,null,'2',null,'','','','','','','');
INSERT INTO PROD_DNA_LOAD.META_RAW.PROCESS 
VALUES
(2003,2003,'otif_etl_framework_tran',2003,1,2,FALSE,TRUE,501,null,'3',null,'','','','','','','');

DROP TABLE PROD_DNA_LOAD.ASPSDL_RAW.SDL_OTIF_CONSUMER_ATTR;

CREATE TABLE PROD_DNA_LOAD.ASPSDL_RAW.SDL_OTIF_CONSUMER_ATTR (
    SLS_ORDR_NUM VARCHAR(255),
    SLS_ORDR_LINE_NBR NUMBER(18,0),
    AFFL_IND VARCHAR(255),
    NO_CHRG_IND VARCHAR(255),
    SLS_ORDR_TYPE_CD VARCHAR(255),
    SLS_ORDR_RSN_CD VARCHAR(255),
    LINE_ITEM_CAT_CD VARCHAR(255),
    CUST_PO_NUM VARCHAR(255),
    DELV_CMPLT_CD VARCHAR(255),
    SLORG_NUM VARCHAR(255),
    SLS_TERR_NUM VARCHAR(255),
    SLS_GRP_CD VARCHAR(255),
    RESP_ENT_CUST_NM VARCHAR(255),
    KEY_CUST_NM VARCHAR(255),
    RESP_ENT_CUST_NUM VARCHAR(255),
    KEY_CUST_NUM VARCHAR(255),
    SOLD_TO_CUST_NM VARCHAR(255),
    SOLD_TO_CUST_NUM VARCHAR(255),
    SHIP_TO_CUST_NM VARCHAR(255),
    SHIP_TO_CUST_CITY_NM VARCHAR(255),
    SHIP_TO_CUST_ST_PRVNC_CD VARCHAR(255),
    SOLD_TO_CUST_CLUS_CD VARCHAR(255),
    SOLD_TO_CUST_SUB_CLUS_CD VARCHAR(255),
    SOLD_TO_CUST_REGN_MKT_CD VARCHAR(255),
    SLORG_RGN_CD VARCHAR(255),
    SLORG_CLUS_CD VARCHAR(255),
    SLORG_SUB_CLUS_CD VARCHAR(255),
    SLORG_MKT_NM VARCHAR(255),
    GEO_CLUS_NM VARCHAR(255),
    SUB_CLUS_CD VARCHAR(255),
    RGN_MKT_CD VARCHAR(255),
    GCCH_CUST_PARNT_NM VARCHAR(255),
    GCCH_RTL_BNR_CD VARCHAR(255),
    GCCH_CUST_CHNL_CD VARCHAR(255),
    LCL_MATL_PARNT_CD VARCHAR(255),
    MATL_SHRT_DESC VARCHAR(255),
    MATL_CAT_GRP_CD VARCHAR(255),
    MATL_GRP_CD VARCHAR(255),
    NPI_FLAG VARCHAR(255),
    DSTN_CHN_STS_CD VARCHAR(255),
    TRD_CSTM_CD VARCHAR(255),
    MATL_NUM VARCHAR(255),
    MFG_SITE_NM VARCHAR(255),
    MRP_CNTL_NM VARCHAR(255),
    DMD_PLNR_NM VARCHAR(255),
    MFGR_NUM VARCHAR(255),
    DP_CLS_NM VARCHAR(255),
    GCPH_GFO_DESC VARCHAR(255),
    GCPH_BRND_DESC VARCHAR(255),
    GCPH_SUB_BRND_DESC VARCHAR(255),
    GCPH_VARIENT_DESC VARCHAR(255),
    GCPH_NEED_ST_DESC VARCHAR(255),
    GCPH_CAT_DESC VARCHAR(255),
    GCPH_SUB_CAT_DESC VARCHAR(255),
    GCPH_SGMNT_DESC VARCHAR(255),
    GCPH_SUB_SGMNT_DESC VARCHAR(255),
    LCL_PROD_HIER_LVL_1_DESC VARCHAR(255),
    LCL_PROD_HIER_LVL_2_DESC VARCHAR(255),
    LCL_PROD_HIER_LVL_3_DESC VARCHAR(255),
    LCL_PROD_HIER_LVL_4_DESC VARCHAR(255),
    LCL_PROD_HIER_LVL_5_DESC VARCHAR(255),
    RGN_GLOBL_BU_DESC VARCHAR(255),
    RGN_SUB_BU_DESC VARCHAR(255),
    RGN_BRND_DESC VARCHAR(255),
    RGN_SUB_BRND_DESC VARCHAR(255),
    RGN_FRAN_DESC VARCHAR(255),
    RGN_OPER_CO_CD VARCHAR(255),
    RGN_CAT_DESC VARCHAR(255),
    PLNT_CD VARCHAR(255),
    PLNT_RGN_CD VARCHAR(255),
    PLNT_CITY_NM VARCHAR(255),
    PLNT_CTRY_CD VARCHAR(255),
    PLNT_NM VARCHAR(255),
    TOP_CUST_NM VARCHAR(255),
    PLNT_NM_CITY_CONCAT VARCHAR(255),
    SLS_UOM_CD VARCHAR(255),
    UOM_CONV_FCTR NUMBER (20,0),
    BASE_UOM_CD VARCHAR(255),
    CUM_SCHED_LINE_CNFRM_QTY NUMBER (20,0),
    CR_CHK_HLD_STS_CD VARCHAR(255),
    INC_BLOCK_HDR_CODE VARCHAR(255),
    INC_BLOCK_LN_CODE VARCHAR(255),
    REJ_RSN_FM_DESC VARCHAR(255),
    REJ_RSN_CD VARCHAR(255),
    REJ_RSN_DESC VARCHAR(255),
    DELV_HDR_BLK_CD VARCHAR(255),
    DELV_HDR_BLK_DESC VARCHAR(255),
    DELV_LINE_BLK_CD VARCHAR(255),
    DELV_LINE_BLK_DESC VARCHAR(255),
    FISC_YR_NBR NUMBER(18,0),
    FISC_YR_MO_NUM VARCHAR(255),
    FISC_YR_WK_NUM VARCHAR(255),
    FRD_FISC_YR_NBR NUMBER(18,0),
    FRD_FISC_YR_MO_NUM VARCHAR(255),
    FRD_FISC_YR_WK_NUM VARCHAR(255),
    SHIP_PT_CAL_KEY_NUM VARCHAR(255),
    RTE_NUM VARCHAR(255),
    FST_ACT_SHIP_COMP_DTTM TIMESTAMP_NTZ(9),
    FST_PLAN_SHIP_COMP_DTTM TIMESTAMP_NTZ(9),
    VICS_BILL_OF_LAD_NUM VARCHAR(255),
    TMS_LD_ID VARCHAR(255),
    CARR_NUM VARCHAR(255),
    CARR_NM VARCHAR(255),
    WHSE_CUT_RSN_CD VARCHAR(255),
    LAST_UPDT_DTTM TIMESTAMP_NTZ(9),
    SRC_SYS_NM VARCHAR(255),
    SLS_ORDR_CRT_YR_NUM NUMBER(18,0),
    SLS_ORDR_CRT_MO_NUM VARCHAR(255),
    ALT_SRC_SYS_CD VARCHAR(255),
    GCGH_RGN_NM VARCHAR(255),
    SLS_ORDR_QTY NUMBER (20,0),
    SLS_ORDR_LINE_CRT_DT DATE,
    SLS_ORDR_LINE_CRT_TM VARCHAR(255),
    RQST_DELV_DTTM TIMESTAMP_NTZ(9),
    SHIP_TO_CUST_CNTRY_NM VARCHAR(255),
    GEO_CTRY_NM VARCHAR(255),
    SHIP_PT_NUM VARCHAR(255),
    SOLD_TO_CUST_ST_PRVNC_CD VARCHAR(255),
    RTE_CAL_KEY VARCHAR(255),
    EXPTD_FRD_DTTM TIMESTAMP_NTZ(9),
    ALLC_TIME VARCHAR(255),
    PICK_PACK_TIME VARCHAR(255),
    SHIP_LD_TIME VARCHAR(255),
    SHIP_ORIG_RTE_DAYS NUMBER (20,0),
    DELV_DOC_NUM VARCHAR(255),
    FST_PLAN_GI_DTTM TIMESTAMP_NTZ(9),
    FNL_CNFRM_QTY NUMBER (20,0),
    FNL_ACTL_SKU_DELV_QTY NUMBER (20,0),
    EXPTD_RDD_ADJ_IND_CD VARCHAR(255),
    BASE_UOM_ORDR_QTY NUMBER(18,0),
    CALC_SLS_ORDR_ADJ_CRT_DTTM TIMESTAMP_NTZ(9),
    FST_PLAN_DELV_DTTM TIMESTAMP_NTZ(9),
    FST_MATL_AVLBLTY_DTTM TIMESTAMP_NTZ(9),
    LAST_MATL_AVLBLTY_DTTM TIMESTAMP_NTZ(9),
    FST_ACTL_SHIP_DTTM TIMESTAMP_NTZ(9),
    FST_ACTL_DELV_DTTM TIMESTAMP_NTZ(9),
    LAST_ACTL_DELV_DTTM TIMESTAMP_NTZ(9),
    CNT_OF_DELV_DOC_NUM NUMBER(18,0),
    LINE_DENOM_MEAS_AT_ALLC NUMBER (20,0),
    LINE_DENOM_MEAS_AT_SC NUMBER (20,0),
    LINE_DENOM_MEAS_AT_DELV NUMBER (20,0),
    CARR_APPT_IND_CD VARCHAR(255),
    TRNST_TIME_IND_CD VARCHAR(255),
    SHIP_TYPE_CD VARCHAR(255),
    CARR_APPT_DTTM TIMESTAMP_NTZ(9),
    MIN_PLAN_GI_DTTM TIMESTAMP_NTZ(9),
    FST_DELV_DOC_NUM VARCHAR(255),
    BH_IND_CD VARCHAR(255),
    MSNG_POD_IND_CD VARCHAR(255),
    CALC_RQST_DELV_DTTM TIMESTAMP_NTZ(9),
    EXPTD_RQST_DELV_DTTM TIMESTAMP_NTZ(9),
    DENOM_UNIT_QTY_ALLC NUMBER (20,0),
    DENOM_UNIT_QTY_SC NUMBER (20,0),
    DENOM_UNIT_QTY_DELV NUMBER (20,0),
    EXPTD_RDD_BASE_UOM_CUM_DELV_QTY NUMBER (20,0),
    LATE_DELV_IND_CD VARCHAR(255),
    EXPTD_MATL_ALLC_DT TIMESTAMP_NTZ(9),
    EXPTD_SHIP_DATE TIMESTAMP_NTZ(9),
    POM_SEG_CD VARCHAR(255),
    GREENLIGHT_SEG_CD VARCHAR(255),
    EXPTD_SDD_BASE_UOM_CUM_DELV_QTY NUMBER (20,0),
    OTIF_EXCL_IND VARCHAR(255),
    NUMRTR_UNIT_QTY_SC NUMBER (20,0),
    NUMRTR_UNIT_QTY_DELV NUMBER (20,0),
    NUMRTR_UNIT_QTY_ALLC NUMBER (20,0),
    LINE_NUMRTR_MEAS_AT_SC NUMBER (20,0),
    LINE_NUMRTR_MEAS_AT_ALLC NUMBER (20,0),
    LINE_NUMRTR_MEAS_AT_DELV NUMBER (20,0),
    GI_LATE_IND VARCHAR(255),
    EXP_MAD_ICMPT_LINE_BLK_IND VARCHAR(255),
    EXP_MAD_ICMPT_HDR_BLK_IND VARCHAR(255),
    CRIT_FM_DESC_OTIF_SC VARCHAR(255),
    CRIT_FM_DESC_OTIF_DELV VARCHAR(255),
    CRIT_FM_DESC_OTIF_ALLC VARCHAR(255),
    TRANS_MISS_FM_QTY NUMBER(18,0),
    PA_MISS_FM_QTY NUMBER(18,0),
    OM_MISS_FM_QTY NUMBER(18,0),
    DC_MISS_FM_QTY NUMBER(18,0),
    CUST_MISS_FM_QTY NUMBER(18,0),
    TRANS_MISS_FM_IND VARCHAR(255),
    PA_MISS_FM_IND VARCHAR(255),
    OM_MISS_FM_IND VARCHAR(255),
    DC_MISS_FM_IND VARCHAR(255),
    CUST_MISS_FM_IND VARCHAR(255),
    TRANS_MISS_FM_DESC VARCHAR(255),
    PA_MISS_FM_DESC VARCHAR(255),
    OM_MISS_FM_DESC VARCHAR(255),
    DC_MISS_FM_DESC VARCHAR(255),
    CUST_MISS_FM_DESC VARCHAR(255),
    TRANS_SUB_FAIL_MODE_DESC VARCHAR(255),
    PA_SUB_FAIL_MODE_DESC VARCHAR(255),
    OM_SUB_FAIL_MODE_DESC VARCHAR(255),
    DC_SUB_FAIL_MODE_DESC VARCHAR(255),
    CUST_SUB_FAIL_MODE_DESC VARCHAR(255),
    CRIT_FM_QTY_TRANS_DELV NUMBER (20,0),
    CRIT_PA_FM_QTY_SC NUMBER (20,0),
    CRIT_PA_FM_QTY_DELV NUMBER (20,0),
    CRIT_PA_FM_QTY_ALLC NUMBER (20,0),
    CRIT_OM_FM_QTY_SC NUMBER (20,0),
    CRIT_OM_FM_QTY_DELV NUMBER (20,0),
    CRIT_OM_FM_QTY_ALLC NUMBER (20,0),
    CRIT_DC_FM_QTY_SC NUMBER (20,0),
    CRIT_DC_FM_QTY_DELV NUMBER (20,0),
    CRIT_CUST_FM_QTY_SC NUMBER (20,0),
    CRIT_CUST_FM_QTY_DELV NUMBER (20,0),
    CRIT_CUST_FM_QTY_ALLC NUMBER (20,0),
    CRIT_OTIF_FM_IND_SC VARCHAR(255),
    CRIT_OTIF_FM_IND_DELV VARCHAR(255),
    CRIT_OTIF_FM_IND_ALLC VARCHAR(255),
    CRIT_FM_DESC_DELV VARCHAR(255),
    CRIT_FM_DESC_ALLC VARCHAR(255),
    FFL_PRCS_FST_PT_FM_DESC VARCHAR(255),
    DRVR_DETL VARCHAR(255),
    EXP_MAD_DELV_BLK_LINE_IND VARCHAR(255),
    EXP_MAD_DELV_BLK_HDR_IND VARCHAR(255),
    EXP_MAD_BASE_UOM_CUM_ALLC_QTY NUMBER (20,0),
    EXP_FRD_BASE_UOM_CUM_ALLC_QTY NUMBER (20,0),
    EXP_MAD_CR_HLD_IND VARCHAR(255),
    EXP_MAD_COMP_DELV_HDR_BLK_IND VARCHAR(255),
    OPEN_BLK_IND VARCHAR(255),
    LATE_ALLC_BLK_IND VARCHAR(255),
    FCTR_DNMNTR_MEAS NUMBER (20,0),
    FCTR_NUMRTR_MEAS NUMBER (20,0),
    SLS_ORDR_CRT_DTTM TIMESTAMP_NTZ(9),
    SHIP_TO_CUST_NUM VARCHAR(255),
    PRIR_BRND_NM VARCHAR(255),
    LOGL_KEY_CMBN_COL_NM VARCHAR(255),
    LOGL_KEY_CMBN_COL_VAL VARCHAR(255),
    CLUS_CD VARCHAR(255),
    RGN_CD VARCHAR(255),
    FST_BILL_NUM VARCHAR(255),
    CUST_SEG VARCHAR(255),
    BRAND_SEG VARCHAR(255),
    DMD_PLN_BO VARCHAR(255),
    TRADE_CUST_MG VARCHAR(255),
    BRND_MKT_COM VARCHAR(255),
    MFG_SITE_TYPE_CD VARCHAR(255),
    CUST_SLS_GRP1_CD VARCHAR(255),
    CUST_SLS_GRP2_CD VARCHAR(255),
    CUST_SLS_GRP3_CD VARCHAR(255),
    SUP_GRP_NM VARCHAR(255),
    SUP_NM VARCHAR(255),
    SUP_NUM VARCHAR(255),
    DAI_BTCH_ID NUMBER (38,0),
    DAI_UPDT_DTTM TIMESTAMP_NTZ(9),
    DAI_CRT_DTTM TIMESTAMP_NTZ(9),
    SRC_SYS_CD VARCHAR(255)
);
