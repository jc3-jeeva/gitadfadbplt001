INSERT INTO META_RAW.USECASE (USECASE_ID, USECASE_NAME,CATEGORY,USECASE_DESCRIPTION,IS_ACTIVE,SEQUENCE_ID) VALUES (543,'MDS_GMC_SKU_MAPPINGS_Reverse_sync','MDS_GMC_SKU_MAPPINGS_Reverse_sync','MDS_GMC_SKU_MAPPINGS_Reverse_sync','TRUE',1);
INSERT INTO META_RAW.PROCESS VALUES (2236,2236,'MDS_GMC_SKU_MAPPINGS',2236,1,2,FALSE,TRUE,543,5,1,NULL,'','','','PROD_CUSTOMER360_APACOBS.GLOBALMASTER_ACCESS','','','');
INSERT INTO META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (27318,2236,'SDL_MDS_GMC_SKU_MAPPINGS_Group','container','asp',FALSE,TRUE);
INSERT INTO META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (27319,2236,'SDL_MDS_GMC_SKU_MAPPINGS_Group','landing_file_path','sql_server/MDS_Reverse_Sync/SDL_MDS_GMC_SKU_MAPPINGS/',FALSE,TRUE);
INSERT INTO META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (27320,2236,'SDL_MDS_GMC_SKU_MAPPINGS_Group','landing_file_name','SDL_MDS_GMC_SKU_MAPPINGS',FALSE,TRUE);
INSERT INTO META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (27321,2236,'SDL_MDS_GMC_SKU_MAPPINGS_Group','target_schema_table','dbo.SF_GMC_SKU_MAPPINGS',FALSE,TRUE);
INSERT INTO META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (27322,2236,'SDL_MDS_GMC_SKU_MAPPINGS_Group','source_schema_table','GLOBALMASTER_ACCESS.VW_DIM_GMC_SKU_MAPPINGS',FALSE,TRUE);
INSERT INTO META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (27323,2236,'SDL_MDS_GMC_SKU_MAPPINGS_Group','source_query','select GMC_SKU_CODE as "GMC_SKU_CODE",	GMC_SKU_NAME as "GMC_SKU_NAME",	UNIQUE_ID as "UNIQUE_ID",	GMC_REGION as "GMC_REGION",	GMC_CODE as "GMC_CODE",	MATERIAL_TYPE as "MATERIAL_TYPE",	EAN_UPC as "EAN_UPC" from  PROD_CUSTOMER360_APACOBS.GLOBALMASTER_ACCESS.VW_DIM_GMC_SKU_MAPPINGS',FALSE,TRUE);
INSERT INTO META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (27324,2236,'SDL_MDS_GMC_SKU_MAPPINGS_Group','truncate_and_load','N',FALSE,TRUE);
INSERT INTO META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (27325,2236,'SDL_MDS_GMC_SKU_MAPPINGS_Group','decide_source','PROD_CUSTOMER360_APACOBS',FALSE,TRUE);
INSERT INTO META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (27326,2236,'SDL_MDS_GMC_SKU_MAPPINGS_Group','truncate_source','N',FALSE,TRUE);
INSERT INTO META_RAW.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (27327,2236,'SDL_MDS_GMC_SKU_MAPPINGS_Group','trunc_source_schema_table','N',FALSE,TRUE);

