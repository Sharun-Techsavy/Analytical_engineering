with source as (

    select * from {{ source('northwind', 'orders') }}
    
)

SELECT *,current_timestamp() as ingestion_timestamp  FROM source