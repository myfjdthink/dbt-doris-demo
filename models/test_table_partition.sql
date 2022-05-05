{{ config(
    materialized='table',
    partition_by = ['calling_code']
)}}

select
*
from {{ref("country_codes")}} limit 100