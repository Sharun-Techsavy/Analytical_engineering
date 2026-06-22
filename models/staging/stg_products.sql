with source as (

    select * from {{ source('northwind', 'products') }}
    
)

SELECT *,current_timestamp() as ingestion_timestamp  FROM source