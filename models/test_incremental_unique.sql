{{config(
    materialized='incremental',
    incremental_strategy='insert_overwrite',
    unique_key = ['country_code']
)}}

select
*
from gaia_test.country_codes