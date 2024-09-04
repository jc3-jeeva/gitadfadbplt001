COPY INTO DEV_DNA_LOAD.PHLSDL_RAW.sdl_Rosepharmacy_product_mapping
  FROM @DEV_DNA_LOAD.PHLSDL_RAW.DEV_LOAD_STAGE_ADLS/prd/rpharma_mds/RosePharmacy_Product_Mapping
FILE_FORMAT = (TYPE = CSV FIELD_DELIMITER = ','  SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '\"');



COPY INTO PROD_DNA_LOAD.PHLSDL_RAW.sdl_rosepharmacy_customer_mapping
  FROM @DEV_DNA_LOAD.PHLSDL_RAW.DEV_LOAD_STAGE_ADLS/prd/rpharma_mds/RosePharmacy_Customer_Mapping
FILE_FORMAT = (TYPE = CSV FIELD_DELIMITER = ','  SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '\"');
