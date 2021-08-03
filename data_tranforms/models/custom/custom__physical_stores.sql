-- using CTE and source referencing
with stores as (
SELECT * FROM {{source('snowflake_data_source','stores')}}
)

-- best practice is to combine everything into "final"
final as (
SELECT * FROM stores
)

SELECT * FROM final