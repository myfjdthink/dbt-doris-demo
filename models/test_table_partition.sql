{{ config(
    materialized='table',
    partition_by = ['calling_code'],
    partition_type = "RANGE",
    partition_values = [
        ('p1', 'LESS THAN ("50")'),
        ('p2', 'LESS THAN ("500")')
    ],
    distributed_by = ['country_code'],
    buckets = 2,
    properties = {
        "replication_num" : 2
    }
)
}}

select *
from {{ref("country_codes")}}
limit 100