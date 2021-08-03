
with store_data as (

   SELECT * FROM {{ ref('custom__physical_stores') }}


)

with county_data as (

   SELECT * FROM {{ ref('county_data') }}


)

final as (
    SELECT store_data.store_name,
           store_data.store_manager
           store_data.store_id
           county_data.county_name
           county_data.county_code
           county_data.county_population
           (county_data.county_code = {{ var('best_county')}}) as is_best_county
           FROM store_data
           LEFT JOIN 
            county_data
            ON store_data.county_code = county_data.county_code
)

SELECT * FROM final