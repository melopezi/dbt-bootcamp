with raw_hosts AS 
(
SELECT * FROM M {{source('airbnb','hosts') }}
)
SELECT 
ID host_id,
NAME host_name,
IS_SUPERHOST,
CREATED_AT,
UPDATED_AT
FROM raw_hosts
