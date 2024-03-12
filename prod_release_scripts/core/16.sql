create or replace view ASPEDW_ACCESS.EDW_RPT_REGIONAL_SELLOUT_OFFTAKE_MODIFIEDVIEW as (
select
    year AS "year",
    qrtr_no AS "qrtr_no",
    mnth_id AS "mnth_id",
    mnth_no AS "mnth_no",
    cal_date AS "cal_date",
    week_start_date AS "week_start_date",
    univ_year AS "univ_year",
    univ_month AS "univ_month",
    country_code AS "country_code",
    country_name AS "country_name",
    data_source AS "data_source",
    soldto_code AS "soldto_code",
    distributor_code AS "distributor_code",
    distributor_name AS "distributor_name",
    store_code AS "store_code",
    store_name AS "store_name",
    store_type AS "store_type",
    distributor_additional_attribute1 AS "distributor_additional_attribute1",
    distributor_additional_attribute2 AS "distributor_additional_attribute2",
    distributor_additional_attribute3 AS "distributor_additional_attribute3",
    sap_parent_customer_key AS "sap_parent_customer_key",
    sap_parent_customer_description AS "sap_parent_customer_description",
    sap_customer_channel_key AS "sap_customer_channel_key",
    sap_customer_channel_description AS "sap_customer_channel_description",
    sap_customer_sub_channel_key AS "sap_customer_sub_channel_key",
    sap_sub_channel_description AS "sap_sub_channel_description",
    sap_go_to_mdl_key AS "sap_go_to_mdl_key",
    sap_go_to_mdl_description AS "sap_go_to_mdl_description",
    sap_banner_key AS "sap_banner_key",
    sap_banner_description AS "sap_banner_description",
    sap_banner_format_key AS "sap_banner_format_key",
    sap_banner_format_description AS "sap_banner_format_description",
    retail_environment AS "retail_environment",
    region AS "region",
    zone_or_area AS "zone_or_area",
    customer_segment_key AS "customer_segment_key",
    customer_segment_description AS "customer_segment_description",
    global_product_franchise AS "global_product_franchise",
    global_product_brand AS "global_product_brand",
    global_product_sub_brand AS "global_product_sub_brand",
    global_product_variant AS "global_product_variant",
    global_product_segment AS "global_product_segment",
    global_product_subsegment AS "global_product_subsegment",
    global_product_category AS "global_product_category",
    global_product_subcategory AS "global_product_subcategory",
    global_put_up_description AS "global_put_up_description",
    ean AS "ean",
    sku_code AS "sku_code",
    sku_description AS "sku_description",
    pka_product_key AS "pka_product_key",
    pka_product_key_description AS "pka_product_key_description",
    from_currency AS "from_currency",
    to_currency AS "to_currency",
    exchange_rate AS "exchange_rate",
    sellout_sales_quantity AS "sellout_sales_quantity",
    sellout_sales_value AS "sellout_sales_value",
    sellout_sales_value_usd AS "sellout_sales_value_usd",
    list_price AS "list_price",
    sellout_value_list_price AS "sellout_value_list_price",
    sellout_value_list_price_usd AS "sellout_value_list_price_usd",
    selling_price AS "selling_price",
    first_scan_flag_parent_customer_level AS "first_scan_flag_parent_customer_level",
    first_scan_flag_market_level AS "first_scan_flag_market_level",
    npd_flag_market_level AS "npd_flag_market_level",
    npd_flag_parent_customer_level AS "npd_flag_parent_customer_level",
    customer_product_desc AS "customer_product_desc",
	msl_product_code AS "msl_product_code",
	msl_product_desc AS "msl_product_desc",
	store_grade AS "store_grade",
	retail_env AS "retail_env",
	channel AS "channel",
    crtd_dttm AS "crtd_dttm",
    updt_dttm AS "updt_dttm", 
TO_DATE(CONCAT(univ_year, '-', LPAD(univ_month, 2, '0'), '-01')) AS "universal calendar",
TO_DATE(CONCAT(year, '-', LPAD(mnth_no, 2, '0'), '-01')) AS "jnj calendar"
from ASPEDW_INTEGRATION.EDW_RPT_REGIONAL_SELLOUT_OFFTAKE 
where year>=(SELECT MIN(result)
FROM (
    SELECT
        GREATEST(MAX(year) - 2, MAX(univ_year) - 2) AS result
    FROM
        ASPEDW_INTEGRATION.EDW_RPT_REGIONAL_SELLOUT_OFFTAKE 
)));
