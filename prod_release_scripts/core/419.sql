
delete 
FROM  PCFEDW_INTEGRATION.EDW_DEMAND_FORECAST_SNAPSHOT_TEMP
WHERE PAC_SUBSOURCE_TYPE = 'SAPBW_ACTUAL'
and to_char(snap_shot_dt, 'YYYYMM')  in (202403,202404,202405)
and   (ACTUAL_SALES_QTY = 0  and APO_TOT_FRCST = 0 and 
APO_BASE_FRCST = 0 and APO_PROMO_FRCST = 0 and
PX_TOT_FRCST = 0 and PX_BASE_FRCST = 0 and PX_PROMO_FRCST =0 );
