{{ config(
    materialized='view'
)}}

select
*
from {{ref("country_codes")}} limit 100