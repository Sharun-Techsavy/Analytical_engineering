with source as (

    select * from {{ source('northwind', 'privileges') }}
    
)

SELECT *,current_timestamp() as ingestion_timestamp  FROM source