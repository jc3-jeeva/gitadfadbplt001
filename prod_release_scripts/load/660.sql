  COPY INTO prod_DNA_LOAD.PHLSDL_RAW.sdl_pos_rks_rose_pharma_consumer
  FROM @prod_DNA_LOAD.PHLSDL_RAW.prod_LOAD_STAGE_ADLS/prd/rpharma_mds/pos_rks_rose_pharma_consumer
FILE_FORMAT = (TYPE = CSV FIELD_DELIMITER = ','  SKIP_HEADER = 1 FIELD_OPTIONALLY_ENCLOSED_BY = '\"' );

