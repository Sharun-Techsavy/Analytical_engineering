with source as (
    SELECT
        id as customer_id,
        company,
        last_name,
        first_name,
        email_address,
        job_title,
        business_phone,
        home_phone,
        mobile_phone,
        fax_number,
        address,
        city,
        state_province,
        zip_postal_code,
        country_region,
        web_page,
        notes,
        attachments,
        current_timestamp() AS load_timestamp
    FROM {{ ref('stg_cust') }}
), 
unique_source as (
    select *,
            row_number() OVER(PARTITION BY customer_id) as row_number
        FROM source
)SELECT * except(row_number),
FROM unique_source 
WHERE row_number = 1