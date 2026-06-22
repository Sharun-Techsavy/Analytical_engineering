with source as (

    select * from {{ source('northwind', 'employee_privileges') }}
    
)

SELECT *, current_timestamp() as ingestion_timestamp  FROM source