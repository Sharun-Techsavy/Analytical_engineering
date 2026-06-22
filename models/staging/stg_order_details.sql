with source as (

    select * from {{ source('northwind', 'order_details') }}
    
)

SELECT *,current_timestamp() as ingestion_timestamp  FROM source