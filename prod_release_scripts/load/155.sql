create or replace stage VNMSDL_RAW.PROD_LOAD_STAGE_ADLS
 storage_integration = PROD_DNA_LOAD_AZURE36_SI
 url = 'azure://dlsadbplt001.blob.core.windows.net/vnm/';

INSERT INTO META_RAW.USECASE (USECASE_ID, USECASE_NAME,CATEGORY,USECASE_DESCRIPTION,IS_ACTIVE,SEQUENCE_ID) VALUES (57,'vn_mt_mds_one_view','VN_MT','mds to dna refresh description','TRUE',1);
INSERT INTO META_RAW.USECASE (USECASE_ID, USECASE_NAME,CATEGORY,USECASE_DESCRIPTION,IS_ACTIVE,SEQUENCE_ID) VALUES (68,'vn_dms_master','VN_DMS','Vietnam DMS Sellthrough','TRUE',1);
INSERT INTO META_RAW.USECASE (USECASE_ID, USECASE_NAME,CATEGORY,USECASE_DESCRIPTION,IS_ACTIVE,SEQUENCE_ID) VALUES (70,'vn_dms_transaction','VN_DMS','Vietnam DMS Order Promotion','TRUE',1);
INSERT INTO META_RAW.USECASE (USECASE_ID, USECASE_NAME,CATEGORY,USECASE_DESCRIPTION,IS_ACTIVE,SEQUENCE_ID) VALUES (72,'vn_dms_data_extract_summary','VN_DMS','Vietnam DMS Extract Summary','TRUE',2);
INSERT INTO META_RAW.USECASE (USECASE_ID, USECASE_NAME,CATEGORY,USECASE_DESCRIPTION,IS_ACTIVE,SEQUENCE_ID) VALUES (73,'j_ap_dna_etl_framework_dn_td_tgt','VN_TARGET_TOPDOOR','Vietnam Target Topdoor','TRUE',1);
INSERT INTO META_RAW.USECASE (USECASE_ID, USECASE_NAME,CATEGORY,USECASE_DESCRIPTION,IS_ACTIVE,SEQUENCE_ID) VALUES (78,'vn_perfect_store','VN_MT_PERFECTSTORE','vn_perfect_store desc','TRUE',1);
INSERT INTO META_RAW.USECASE (USECASE_ID, USECASE_NAME,CATEGORY,USECASE_DESCRIPTION,IS_ACTIVE,SEQUENCE_ID) VALUES (96,'vn_dksh_inventory','VN_MT','vietnam dksh_inventory files','TRUE',3);
INSERT INTO META_RAW.USECASE (USECASE_ID, USECASE_NAME,CATEGORY,USECASE_DESCRIPTION,IS_ACTIVE,SEQUENCE_ID) VALUES (99,'vn_mt_pos_transaction','VN_MT','vn_mt_pos_transaction','TRUE',2);

INSERT INTO META_RAW.PROCESS VALUES (176,176,'vn_mt_mds_refresh',176,1,1,FALSE,TRUE,57,2,1,null,'','','','','','');
INSERT INTO META_RAW.PROCESS VALUES (179,179,'vn_oneview_tableau_refresh',179,1,1,FALSE,TRUE,57,null,3,null,'','','','','','Tableau');
INSERT INTO META_RAW.PROCESS VALUES (211,211,'vn_dms_distributor_dim',211,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (212,212,'vn_dms_customer_dim',212,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (213,213,'vn_dms_kpi',213,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (214,214,'vn_dms_promotion_list',214,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (215,215,'vn_dms_product_dim',215,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (216,216,'vn_dms_sales_org_dim',216,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (217,217,'vn_dms_msl',217,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (218,218,'vn_dms_KPI_Sellin_sellthrgh',218,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (219,219,'vn_dms_sellthrgh_sales_fact',219,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (220,220,'vn_dms_call_details',220,1,1,FALSE,TRUE,70,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (221,221,'vn_dms_order_promotion',221,1,1,FALSE,TRUE,70,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (222,222,'vn_dms_sales_stock_fact',222,1,1,FALSE,TRUE,70,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (223,223,'vn_dms_data_extract_summary',223,1,1,FALSE,TRUE,72,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (224,224,'vn_gt_topdoor_target',224,1,1,FALSE,TRUE,73,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (225,225,'vn_oneview_otc',225,1,1,FALSE,TRUE,57,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (230,230,'vn_interface_answers',230,1,1,FALSE,TRUE,78,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (231,231,'vn_interface_choice',231,1,1,FALSE,TRUE,78,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (232,232,'vn_interface_branch',232,1,1,FALSE,TRUE,78,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (233,233,'vn_interface_cpg',233,1,1,FALSE,TRUE,78,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (234,234,'vn_interface_customervisited',234,1,1,FALSE,TRUE,78,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (235,235,'vn_interface_iseheader',235,1,1,FALSE,TRUE,78,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (236,236,'vn_interface_notes',236,1,1,FALSE,TRUE,78,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (237,237,'vn_interface_questions',237,1,1,FALSE,TRUE,78,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (238,238,'vn_Product_JNJ_mapping',238,1,1,FALSE,TRUE,78,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (255,255,'VN_MT_Target_Sellin',255,1,1,FALSE,TRUE,99,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (294,294,'vn_mt_sellin_exception_tab_refresh',294,1,1,FALSE,TRUE,7,null,3,null,'','','','','','Tableau');
INSERT INTO META_RAW.PROCESS VALUES (295,295,'vn_mt_sellin_sellout_analysis_tab_refresh',295,1,1,FALSE,TRUE,96,null,3,null,'','','','','','Tableau');
INSERT INTO META_RAW.PROCESS VALUES (296,296,'vn_mt_offtake_exception_tab_refresh',296,1,1,FALSE,TRUE,7,null,3,null,'','','','','','Tableau');
INSERT INTO META_RAW.PROCESS VALUES (297,297,'vn_dksh_stock_inventory',297,1,1,FALSE,TRUE,96,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (298,298,'vn_dms_sellout_details',298,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (299,299,'vn_dms_sellout_header',299,1,1,FALSE,TRUE,68,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (300,300,'out_con_forcast_vn',300,1,1,FALSE,TRUE,70,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (301,301,'out_con_yeartarget',301,1,1,FALSE,TRUE,70,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (302,302,'vn_mt_sellout_aeon',302,1,1,FALSE,TRUE,99,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (303,303,'vn_mt_sellout_bhx',303,1,1,FALSE,TRUE,99,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (304,304,'vn_mt_sellout_con_cung',304,1,1,FALSE,TRUE,99,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (305,305,'vn_mt_sellout_coop',305,1,1,FALSE,TRUE,99,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (306,306,'vn_mt_sellout_guardian',306,1,1,FALSE,TRUE,99,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (307,307,'vn_mt_sellout_lotte',307,1,1,FALSE,TRUE,99,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (308,308,'vn_mt_sellout_mega',308,1,1,FALSE,TRUE,99,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (309,309,'vn_mt_sellout_vinmart',309,1,1,FALSE,TRUE,99,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');
INSERT INTO META_RAW.PROCESS VALUES (310,310,'vn_mt_sellout_vinmart_plus',310,1,1,FALSE,TRUE,99,1,1,null,'','','','VNMSDL_RAW.PROD_LOAD_STAGE_ADLS','','');

INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (125,16,'VN','itx-arm-conapdna-vietnam-prod-kdp','cert-data-lake/VN_PS/Interface_Answers/','Interface_Answers','vnm','VN_PS/transaction/Interface_Answers/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (126,16,'VN','itx-arm-conapdna-vietnam-prod-kdp','cert-data-lake/VN_PS/Interface_Branch/','Interface_Branch','vnm','VN_PS/transaction/Interface_Branch/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (127,16,'VN','itx-arm-conapdna-vietnam-prod-kdp','cert-data-lake/VN_PS/Interface_CPG/','Interface_CPG','vnm','VN_PS/transaction/Interface_CPG/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (128,16,'VN','itx-arm-conapdna-vietnam-prod-kdp','cert-data-lake/VN_PS/Interface_Notes/','Interface_Notes','vnm','VN_PS/transaction/Interface_Notes/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (129,16,'VN','itx-arm-conapdna-vietnam-prod-kdp','cert-data-lake/VN_PS/Interface_ISE\ Header/','Interface_ISE','vnm','VN_PS/transaction/Interface_ISEHeader/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (130,16,'VN','itx-arm-conapdna-vietnam-prod-kdp','cert-data-lake/VN_PS/Interface_Choices/','Interface_Choices','vnm','VN_PS/transaction/Interface_Choices/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (131,16,'VN','itx-arm-conapdna-vietnam-prod-kdp','cert-data-lake/VN_PS/Interface_CustomerVisited/','Interface_CustomerVisited','vnm','VN_PS/transaction/Interface_CustomerVisited/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (132,16,'VN','itx-arm-conapdna-vietnam-prod-kdp','cert-data-lake/VN_PS/Interface_Question/','Interface_Question','vnm','VN_PS/transaction/Interface_Question/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (133,16,'VN','itx-arm-conapdna-vietnam-prod-kdp','cert-data-lake/VN_PS/Interface_Product_Mapping/','Interface_Product_Mapping','vnm','VN_PS/master/Interface_Product_Mapping/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (137,15,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/MT/MT_source/Inventory/','DKSH_stock','vnm','dksh/transaction/dksh_stock/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (138,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_D_VN','vnm','dms/transaction/dms_source/sellout_details/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (139,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_H_VN','vnm','dms/transaction/dms_source/sellout_header/',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (142,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/manual_files/','OUT_CON_Yeartarget','vnm','dms/master/manual_file',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (143,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/manual_files/','OUT_CON_Forecast_VN','vnm','dms/transaction/manual_file',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (144,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_DT_VN','vnm','dms/master/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (149,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_C_VN','vnm','dms/master/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (150,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_K_VN','vnm','dms/master/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (151,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_P_VN','vnm','dms/master/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (152,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_PD_VN','vnm','dms/master/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (153,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_S_VN','vnm','dms/master/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (154,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_M_VN','vnm','dms/master/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (155,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_KSI_VN','vnm','dms/master/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (156,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_ST_VN','vnm','dms/transaction/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (157,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_CD_VN','vnm','dms/transaction/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (158,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_OP_VN','vnm','dms/transaction/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (159,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','OUT_CON_I_VN','vnm','dms/transaction/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (160,14,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/dms/dms_source/','Data_Extract_Summary_VN','vnm','dms/transaction/dms_source',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (161,13,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/GT/Topdoor_Target','Target_topdoor','vnm','GT/Reference/Topdoor',True,'Y');
INSERT INTO META_RAW.s3_to_adls(id,group_id,country,s3_bucket,s3_path,s3_file,adls_container,adls_path,Isactive,DELETE_SOURCE_FILE) VALUES (162,15,'VN','itx-arm-conapdna-vietnam-prod-kdp','raw-data-lake/otc_sellout/','DKSH_OTC_Sellout','vnm','otc_sellout/transation',True,'Y');



INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (1929,62,'rg_travel_retail_channel_product_target_dbt_ing_group','container','asp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3888,41,'J_RG_Account_attr_CIW_Dim_dbt_ing','container','asp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3889,42,'J_RG_Account_attr_CIW_Dim_dbt_ing','container','asp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3890,43,'sap_bw_master_etl_framework_dbt_ing_group','container','asp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3891,45,'sap_ecc_master_etl_framework_dbt_ing_group','container','asp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3892,57,'rg_mds_to_dna_dbt_ing_group','container','asp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3893,58,'rg_greenlight_mds_dbt_ing_group','container','asp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3894,63,'rg_travel_retail_files_dbt_ing_group','container','asp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3895,65,'Global_Commercial_Hierarchy_Wrapper_dbt_ing_group','container','asp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3896,71,'sg_mds_to_dna_refresh_dbt_ing_group','container','sgp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3897,72,'sg_master_sellout_dbt_ing_group','container','sgp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3898,73,'sg_transaction_scan_dbt_ing_group','container','sgp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3899,74,'sg_transaction_sellout_dbt_ing_group','container','sgp',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3900,143,'my_pos_dbt_ing_group','container','mys',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3901,144,'my_sellin_dbt_ing_group','container','mys',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3902,145,'my_sellout_dbt_ing_group','container','mys',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3903,147,'my_sellout_inv_dbt_ing_group','container','mys',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3904,149,'my_joint_monthly_dbt_ing_group','container','mys',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3905,150,'my_sellout_sales_dbt_ing','container','mys',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3906,152,'j_rg_watsons_inv_ingestion_dbt_ing','container','mys',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3907,256,'th_non_tesco_dbt_ing_group','container','tha',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3908,258,'tesco_mt_7_11_and_tops_dbt_ing_group','container','tha',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3909,260,'th_mbox_files_dbt_ing_group','container','tha',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3910,264,'th_gt_files_dbt_ing_group','container','tha',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3911,265,'th_sfmc_dbt_ing_group','container','tha',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3912,266,'th_crm_files_dbt_ing_group','container','tha',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3913,268,'j_th_perfect_store_transaction_dbt_ing_group','container','tha',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3914,269,'cambodia_file_ingestion_dbt_ing_group','container','tha',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3915,270,'myanmar_file_ingestion_dbt_ing_group','container','tha',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3916,271,'laos_file_ingestion_dbt_ing_group','container','tha',FALSE,TRUE);
INSERT INTO meta_raw.PARAMETERS (PARAMETER_ID, PARAMETER_GROUP_ID,PARAMETER_GROUP_NAME,PARAMETER_NAME,PARAMETER_VALUE,IS_SENSITIVE,IS_ACTIVE) VALUES (3917,274,'th_mt_daily_price_load_dbt_ing_group','container','tha',FALSE,TRUE);


update meta_raw.PARAMETERS
set set PARAMETER_VALUE = 'GT_Intervention/reference/DnA_VMR/Msl'
where parameter_id = 2672;

update meta_raw.PARAMETERS
set set PARAMETER_VALUE = 'csv'
where parameter_id = 3197;

update meta_raw.parameters
set parameter_value = 'dms/master/dms_source'
where parameter_name = 'folder_path' and PARAMETER_GROUP_ID in(
211
,212
,213
,214
,215
,216
,217
,218
);

update meta_raw.parameters
set parameter_value = 'dms/transation/dms_source'
where parameter_name = 'folder_path' and PARAMETER_GROUP_ID in(
219
,220
,221
,222
,223
);

update meta_raw.parameters
set parameter_value = 'GT/Reference/Topdoor'
where parameter_name = 'folder_path' and PARAMETER_GROUP_ID = 224;

update meta_raw.parameters
set parameter_value = 'otc_sellout/transation'
where parameter_name = 'folder_path' and PARAMETER_GROUP_ID = 225;
