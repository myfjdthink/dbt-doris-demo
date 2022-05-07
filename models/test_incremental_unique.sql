{{config(
    materialized='incremental',
    incremental_strategy='insert_overwrite',
    partition_by = {
      "field": "country_code",
      "data_type": "string"
})}}

select
*
from gaia_test.country_codes