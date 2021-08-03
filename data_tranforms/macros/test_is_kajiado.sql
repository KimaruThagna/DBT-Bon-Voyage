{% test is_kajiado(model, column_name) %}

with validation as (

    select
        {{ column_name }} as county_code

    from {{ model }}

),

validation_errors as (

    select
        county_code

    from validation
    where county_code = '034' 

)

select *
from validation_errors

{% endtest %}