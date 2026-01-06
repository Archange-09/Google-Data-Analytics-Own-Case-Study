CREATE TABLE `capstone-482707.EV_data.cleaned_ev_final2` AS
SELECT
  vin_1_10,
  UPPER(TRIM(county)) AS county,
  state,
  model_year,
  UPPER(TRIM(make)) AS make,
  upper(trim(ev_type)) AS ev_type,
  CAST(electric_range AS INT) AS electric_range
FROM (
  SELECT *,
         ROW_NUMBER() OVER (
           PARTITION BY vin_1_10
           ORDER BY county IS NOT NULL DESC
         ) AS row_num
  FROM `capstone-482707.EV_data.EV_data`
  WHERE state = 'WA'
    AND UPPER(TRIM(ev_type)) IN (
      'BATTERY ELECTRIC VEHICLE (BEV)', 
      'PLUG-IN HYBRID ELECTRIC VEHICLE (PHEV)'
  )
)
WHERE row_num = 1
  AND vin_1_10 IS NOT NULL
  AND county IS NOT NULL
  AND model_year IS NOT NULL
  AND make IS NOT NULL
  AND ev_type IS NOT NULL;