{{ config(
    materialized='table'
)}}

select
*
from gaia_test.country_codes limit 100