with source as (

    select * from {{ source('northwind', 'invoices') }}
    
)

SELECT *,current_timestamp() as ingestion_timestamp  FROM source