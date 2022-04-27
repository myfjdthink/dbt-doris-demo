{{ config(
    materialized='table'
)}}
select address
from gaia_test.all_pools_info limit 100