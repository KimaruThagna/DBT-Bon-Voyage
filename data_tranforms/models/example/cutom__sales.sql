-- using CTE and source referencing
with source_sales_data as (
SELECT * FROM {{source('snowflake_data_source','store_sales')}}
)

-- best practice is to combine everything into "final"
final as (
SELECT * FROM source_sales_data
)

SELECT * FROM final