with source as (

    select * from {{ source('northwind', 'employee_privileges') }}
    
)

SELECT * FROM source