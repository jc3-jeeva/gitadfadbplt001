create or replace TABLE PROD_DNA_LOAD.PCFSDL_RAW.SDL_PERENSO_SURVEY_RESULT (
	STORE_CHK_HDR_KEY NUMBER(10,0),
	LINE_KEY NUMBER(10,0),
	TODO_KEY NUMBER(10,0),
	PROD_GRP_KEY NUMBER(10,0),
	OPTIONANS NUMBER(10,0),
	NOTESANS VARCHAR(500),
	RUN_ID NUMBER(14,0),
	CREATE_DT TIMESTAMP_NTZ(9) DEFAULT CONVERT_TIMEZONE('SGT', CAST(CAST('CURRENT_TIMESTAMP()' AS TIMESTAMP_NTZ(9)) AS TIMESTAMP_TZ(9)))
);

update meta_raw.process
set sequence_id = 1
where PARAMETER_GROUP_ID in (402,403,405,406);

update meta_raw.parameters
set sequence_id = 'AcctGrp'
where PARAMETER_ID in (4592,4593);

update meta_raw.parameters
set sequence_id = 'Account'
where PARAMETER_ID in (5961,5962);


update meta_raw.parameters
set sequence_id = 'Ranging'
where PARAMETER_ID in (3678,3680);
