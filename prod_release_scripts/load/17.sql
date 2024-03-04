DELETE
FROM  prod_dna_load.myssdl_raw.sdl_so_sales_108129 where file_name = 'MY_GT_108129_Sales_20240229.csv' QUALIFY row_number() OVER (partition BY distributor_id, sales_order_number, sales_order_date, type, customer_code, distributor_wh_id, sap_material_id, product_code, product_ean_code, product_description, gross_item_price, quantity, uom, quantity_in_pieces, quantity_after_conversion, sub_total_1, discount, sub_total_2, bottom_line_discount, total_amt_after_tax, total_amt_before_tax, sales_employee, custom_field_1, custom_field_2, custom_field_3, file_name
order by distributor_id, sales_order_number, sales_order_date, type, customer_code, distributor_wh_id, sap_material_id, product_code, product_ean_code, product_description, gross_item_price, quantity, uom, quantity_in_pieces, quantity_after_conversion, sub_total_1, discount, sub_total_2, bottom_line_discount, total_amt_after_tax, total_amt_before_tax, sales_employee, custom_field_1, custom_field_2, custom_field_3, file_name) > 1;

update meta_raw.process
set SEQUENCE_ID = 2
where process_id = 154;

update meta_raw.process
set SEQUENCE_ID = 1
where process_id = 155;
