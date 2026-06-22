with source as (

    select * from {{ source('northwind', 'employee') }}
    
)

SELECT *,current_timestamp() as ingestion_timestamp  FROM source