{{ config(
    materialized='table'
)}}

select
*
from {{ref("country_codes")}} limit 100