with source as (

    select * from {{ source('northwind', 'shippers') }}
    
)

SELECT *,current_timestamp() as ingestion_timestamp  FROM source