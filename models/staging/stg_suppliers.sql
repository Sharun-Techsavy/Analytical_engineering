with source as (

    select * from {{ source('northwind', 'suppliers') }}
    
)

SELECT *,current_timestamp() as ingestion_timestamp  FROM source