create or replace TABLE SGPITG_INTEGRATION.ITG_QUERY_PARAMETERS (
	COUNTRY_CODE VARCHAR(20),
	PARAMETER_NAME VARCHAR(300),
	PARAMETER_VALUE VARCHAR(300),
	PARAMETER_TYPE VARCHAR(100)
);

create or replace TABLE SGPITG_INTEGRATION.SDL_RAW_SG_CIW_MAPPING (
	CONDITION_TYPE VARCHAR(500),
	GL VARCHAR(10),
	GL_DESCRIPTION VARCHAR(500),
	POSTED_WHERE VARCHAR(500),
	PURPOSE VARCHAR(500),
	CIW_BUCKET VARCHAR(500),
	CDL_DTTM VARCHAR(255),
	CURR_DATE TIMESTAMP_NTZ(9),
	FILE_NAME VARCHAR(255),
	RUN_ID NUMBER(14,0)
);

create or replace TABLE PROD_DNA_CORE.ASPITG_INTEGRATION.ITG_COPA17_TRANS (
	REQUEST_NUMBER VARCHAR(100) NOT NULL,
	DATA_PACKET VARCHAR(50) NOT NULL,
	DATA_RECORD VARCHAR(100) NOT NULL,
	FISC_YR_PER NUMBER(7,0),
	FISC_YR_VRNT VARCHAR(2),
	FISC_YR NUMBER(4,0),
	CAL_DAY DATE,
	PSTNG_PER NUMBER(3,0),
	CAL_YR_MO NUMBER(6,0),
	CAL_YR NUMBER(4,0),
	VERS VARCHAR(3),
	VAL_TYPE NUMBER(3,0),
	CO_CD VARCHAR(4),
	CNTL_AREA VARCHAR(4),
	PRFT_CTR VARCHAR(10),
	SLS_EMP_HIST NUMBER(8,0),
	SLS_ORG VARCHAR(4),
	SLS_GRP VARCHAR(3),
	SLS_OFF VARCHAR(4),
	CUST_GRP VARCHAR(2),
	DSTN_CHNL VARCHAR(2),
	SLS_DSTRC VARCHAR(6),
	CUST VARCHAR(10),
	MATL VARCHAR(18),
	CUST_SLS_VIEW VARCHAR(10),
	DIV VARCHAR(2),
	PLNT VARCHAR(4),
	MERCIA_REF VARCHAR(5),
	B3_BASE_PROD VARCHAR(3),
	B4_VRNT VARCHAR(3),
	B5_PUT_UP VARCHAR(3),
	B1_MEGA_BRND VARCHAR(3),
	B2_BRND VARCHAR(3),
	RGN VARCHAR(3),
	CTRY VARCHAR(3),
	PROD_MINOR VARCHAR(18),
	PROD_MAJ VARCHAR(18),
	PROD_FRAN VARCHAR(18),
	FRAN VARCHAR(18),
	FRAN_GRP VARCHAR(18),
	OPER_GRP VARCHAR(18),
	FISC_QTR NUMBER(1,0),
	MATL2 VARCHAR(18),
	BILL_TYPE VARCHAR(4),
	FISC_WK DATE,
	AMT_GRP_CRCY NUMBER(20,2),
	AMT_OBJ_CRCY NUMBER(20,2),
	CRNCY VARCHAR(5),
	OBJ_CRNCY VARCHAR(5),
	ACCT_NUM VARCHAR(10),
	CHRT_OF_ACCT VARCHAR(4),
	MGMT_ENTITY VARCHAR(6),
	SLS_PRSN_RESPONS VARCHAR(30),
	BUSN_AREA VARCHAR(4),
	GA NUMBER(20,2),
	TC VARCHAR(5),
	MATL_PLNT_VIEW VARCHAR(18),
	QTY NUMBER(20,3),
	UOM VARCHAR(10),
	SLS_VOL_IEU NUMBER(17,3),
	UN_SLS_VOL__IEU VARCHAR(10),
	BPT_DSTN_CHNL VARCHAR(2),
	CRT_DTTM TIMESTAMP_NTZ(9),
	UPDT_DTTM TIMESTAMP_NTZ(9),
	primary key (REQUEST_NUMBER, DATA_PACKET, DATA_RECORD)
);

create or replace TABLE PROD_DNA_CORE.ASPITG_INTEGRATION.ITG_COPA_TRANS (
	REQUEST_NUMBER VARCHAR(100) NOT NULL,
	DATA_PACKET VARCHAR(50) NOT NULL,
	DATA_RECORD VARCHAR(100) NOT NULL,
	CO_CD VARCHAR(4),
	CNTL_AREA VARCHAR(4),
	PRFT_CTR VARCHAR(10),
	SLS_ORG VARCHAR(4),
	MATL VARCHAR(18),
	CUST_NUM VARCHAR(10),
	DIV VARCHAR(2),
	PLNT VARCHAR(4),
	CHRT_ACCT VARCHAR(4),
	ACCT_NUM VARCHAR(10),
	DSTR_CHNL VARCHAR(2),
	FISC_YR_VAR VARCHAR(2),
	VERS VARCHAR(3),
	BW_DELTA_UPD_MODE VARCHAR(1),
	BILL_TYP VARCHAR(4),
	SLS_OFF VARCHAR(4),
	CNTRY_KEY VARCHAR(3),
	SLS_DEAL VARCHAR(10),
	SLS_GRP VARCHAR(3),
	SLS_EMP_HIST NUMBER(18,0),
	SLS_DIST VARCHAR(6),
	CUST_GRP VARCHAR(2),
	CUST_SLS VARCHAR(10),
	BUSS_AREA VARCHAR(4),
	VAL_TYPE_RPT NUMBER(18,0),
	MERCIA_REF VARCHAR(5),
	CALN_DAY VARCHAR(20),
	CALN_YR_MO NUMBER(18,0),
	FISC_YR NUMBER(18,0),
	PSTNG_PER NUMBER(18,0),
	FISC_YR_PER NUMBER(18,0),
	B3_BASE_PROD VARCHAR(3),
	B4_VAR VARCHAR(3),
	B5_PUT_UP VARCHAR(3),
	B1_MEGA_BRND VARCHAR(3),
	B2_BRND VARCHAR(3),
	REG VARCHAR(3),
	PROD_MINOR VARCHAR(18),
	PROD_MAJ VARCHAR(18),
	PROD_FRAN VARCHAR(18),
	FRAN VARCHAR(18),
	GRAN_GRP VARCHAR(18),
	OPER_GRP VARCHAR(18),
	SLS_PRSN_RESP VARCHAR(30),
	MATL_SLS VARCHAR(18),
	PROD_HIER VARCHAR(18),
	MGMT_ENTITY VARCHAR(6),
	FX_AMT_CNTL_AREA_CRNCY NUMBER(20,5),
	AMT_CNTL_AREA_CRNCY NUMBER(20,5),
	CRNCY_KEY VARCHAR(5),
	AMT_OBJ_CRNCY NUMBER(20,5),
	OBJ_CRNCY_CO_OBJ VARCHAR(5),
	GRS_AMT_TRANS_CRNCY NUMBER(20,5),
	CRNCY_KEY_TRANS_CRNCY VARCHAR(5),
	QTY NUMBER(20,5),
	UOM VARCHAR(20),
	SLS_VOL NUMBER(20,5),
	UN_SLS_VOL VARCHAR(20),
	CRT_DTTM TIMESTAMP_NTZ(9),
	UPDT_DTTM TIMESTAMP_NTZ(9),
	primary key (REQUEST_NUMBER, DATA_PACKET, DATA_RECORD)
);

create or replace TABLE PROD_DNA_CORE.ASPITG_INTEGRATION.ITG_INVC_SLS (
	REQUEST_NUMBER VARCHAR(100) NOT NULL,
	DATA_PACKET VARCHAR(50) NOT NULL,
	DATA_RECORD VARCHAR(100) NOT NULL,
	ACT_DELV_DT DATE,
	ACT_GOOD_ISS_DT DATE,
	BILL_TO_PRTY VARCHAR(10),
	BILL_DT DATE,
	BILL_TY VARCHAR(4),
	BILL_DOC VARCHAR(10),
	CMPY_CD VARCHAR(4),
	CUST_NO VARCHAR(10),
	DELV_DOC_CRT_DT DATE,
	DSTR_CHNL VARCHAR(2),
	DIV VARCHAR(2),
	DOC_CRT_DT DATE,
	DOC_DT DATE,
	GOOD_ISS_DT DATE,
	MAT VARCHAR(18),
	MAT_AVAIL_DT DATE,
	ORD_RSN VARCHAR(3),
	OVRL_REJ_STS VARCHAR(1),
	OVRL_STS_CRD_CHK VARCHAR(1),
	PAYER VARCHAR(10),
	PLANT VARCHAR(4),
	PREC_DOC_ITM NUMBER(18,0),
	PREC_DOC_NUM VARCHAR(10),
	PROOF_DELV_DT DATE,
	RSN_CD_KEY VARCHAR(29),
	RSN_REJ VARCHAR(2),
	RLSE_DT_CR_MGMT DATE,
	RQST_DELV_DT DATE,
	ROUTE VARCHAR(6),
	SLS_DOC VARCHAR(10),
	SLS_DOC_CAT VARCHAR(2),
	SLS_DOC_ITM NUMBER(18,0),
	SLS_DOC_TYP VARCHAR(4),
	SLS_EMP_HIST NUMBER(18,0),
	SLS_ORG VARCHAR(4),
	SLS_DOC_ITM_CAT VARCHAR(4),
	SHIP_TO_PRTY VARCHAR(10),
	SOLD_TO_PRTY VARCHAR(10),
	BILL_QTY_CSE NUMBER(15,4),
	BILL_QTY_PC NUMBER(15,4),
	BILL_QTY_DIFOT NUMBER(15,4),
	BILL_QTY_OTIF NUMBER(15,4),
	BILL_QTY_SLS_UOM NUMBER(15,4),
	CNFRM_QTY_DIFOT NUMBER(15,4),
	CNFRM_QTY_PC NUMBER(15,4),
	DELV_QTY_CSE NUMBER(15,4),
	DELV_QTY_PC NUMBER(15,4),
	DELV_QTY_SLS_UOM NUMBER(15,4),
	EST_NTS NUMBER(15,4),
	NTS_BILL NUMBER(15,4),
	NET_INVC_SLS NUMBER(15,4),
	FUT_SLS_QTY NUMBER(15,4),
	GROS_TRD_SLS NUMBER(15,4),
	NET_AMT NUMBER(15,4),
	NET_PRC NUMBER(15,4),
	NET_BILL_VAL NUMBER(15,4),
	NET_ORD_VAL NUMBER(15,4),
	ORD_QTY_CSE NUMBER(15,4),
	ORD_QTY_PC NUMBER(15,4),
	ORD_PC_QTY NUMBER(15,4),
	ORD_SLS_QTY NUMBER(15,4),
	TRAN_LDTM NUMBER(15,4),
	UNSPP_QTY NUMBER(15,4),
	UNSPP_VAL NUMBER(15,4),
	VOL_DELV NUMBER(15,4),
	VOL_ORD NUMBER(20,4),
	CAL_DAY DATE,
	BASE_UOM VARCHAR(4),
	CURR_KEY VARCHAR(5),
	DOC_CURR VARCHAR(5),
	SLS_UNIT VARCHAR(4),
	FISC_YR VARCHAR(10),
	CRT_DTTM TIMESTAMP_NTZ(9),
	UPDT_DTTM TIMESTAMP_NTZ(9),
	primary key (REQUEST_NUMBER, DATA_PACKET, DATA_RECORD)
);

create or replace TABLE PROD_DNA_CORE.ASPITG_INTEGRATION.ITG_INVNT (
	REQUEST_NUMBER VARCHAR(100),
	DATA_PACKET VARCHAR(50),
	DATA_RECORD VARCHAR(100),
	LCL_CRNCY VARCHAR(5),
	BASE_UNIT VARCHAR(3),
	MATL_NO VARCHAR(18),
	STRG_LOC VARCHAR(4),
	STK_TYPE VARCHAR(1),
	STK_CAT VARCHAR(1),
	CO_CD VARCHAR(4),
	MATL_PLNT_VIEW VARCHAR(18),
	BTCH_NUM VARCHAR(10),
	PLNT VARCHAR(4),
	WHSE_NUM VARCHAR(3),
	STRG_BIN VARCHAR(10),
	STRG_TYPE VARCHAR(3),
	SPL_STCK_VAL VARCHAR(1),
	SPL_STCK_INDICA VARCHAR(1),
	DOC_DT DATE,
	VALUT_CLS VARCHAR(4),
	VALUT_AREA VARCHAR(4),
	VALUT_TYPE VARCHAR(10),
	PSTNG_DT DATE,
	CAL_DAY DATE,
	WH_MSTR VARCHAR(18),
	VERS VARCHAR(3),
	VAL_TYPE NUMBER(18,0),
	VEND VARCHAR(10),
	SOLD_TO_PRTY VARCHAR(10),
	MVMT_IND_SEC VARCHAR(1),
	CRNCY VARCHAR(5),
	FISC_YR_VRNT VARCHAR(2),
	FISC_YR NUMBER(18,0),
	CAL_YR NUMBER(18,0),
	CAL_MO NUMBER(18,0),
	QTR NUMBER(18,0),
	CAL_YR_QTR NUMBER(18,0),
	CAL_YR_WK NUMBER(18,0),
	PSTNG_PER NUMBER(18,0),
	HALF_YR NUMBER(18,0),
	WKDAY NUMBER(18,0),
	FISC_YR_PER NUMBER(18,0),
	CAL_YR_MON NUMBER(18,0),
	STCK_REC_VAL NUMBER(19,2),
	ISS_STCK_VAL NUMBER(19,2),
	ISS_BLOK_QTY NUMBER(20,3),
	CNG_STK_QTY_ISS NUMBER(20,3),
	ISS_QTY_QUAL NUMBER(20,3),
	ISS_QTY_TRST NUMBER(20,3),
	RCPT_QTY_BLOK NUMBER(20,3),
	CNS_STCK_RCPT NUMBER(20,3),
	RCPT_QTY_QUAL NUMBER(20,3),
	RCPT_QTY_TRST NUMBER(20,3),
	ISS_QTY_SCRAP NUMBER(20,3),
	ISS_VAL_SCRAP NUMBER(19,2),
	RCPT_TOT_STCK NUMBER(20,3),
	ISS_TOT_STCK NUMBER(20,3),
	ISS_QTY_STCK_VAL NUMBER(20,3),
	REC_QTY_VAL_STCK NUMBER(20,3),
	VDR_CNSGNMNT_STCK_CNVAL NUMBER(19,2),
	REC_VAL_Q_STCK NUMBER(19,2),
	REC_VAL_BLOK NUMBER(19,2),
	ISS_VAL_BLOK NUMBER(19,2),
	ISS_VAL_Q_STCK NUMBER(19,2),
	REC_VAL_TRST NUMBER(19,2),
	ISS_VAL_TRST NUMBER(19,2),
	ISS_VAL_CONS_STCK NUMBER(19,2),
	RCPT_VAL_CONS_STK NUMBER(19,2),
	BW_PRCH_VAL NUMBER(19,2),
	BW_AMT_BUNITM NUMBER(20,3),
	DELV_COST NUMBER(19,2),
	STD_MATL_COST NUMBER(19,2),
	PRC_UNIT NUMBER(20,3),
	LINE_CNT NUMBER(18,0),
	CRT_DTTM TIMESTAMP_NTZ(9),
	UPDT_DTTM TIMESTAMP_NTZ(9)
);
