with source as (

    select * from {{ source('northwind', 'strings') }}
    
)

SELECT *,current_timestamp() as ingestion_timestamp  FROM source