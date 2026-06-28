SELECT 
    format_date('%F', d) as id, 
    d as full_date,
    extract(YEAR FROM d) as year,
    extract(WEEK FROM d) as year_week,
    extract(DAY FROM d) as year_day,
    extract(YEAR FROM d) as fiscal_year,
    format_date('%Q', d) as fiscal_qtr,
    extract(MONTH from d) as month,
    format_date('%B', d) as month_name,
    format_date('%w', d) as week_day,
    format_date('%A', d) as day_name,
    (case when format_date('%A', d) IN ('Sunday', 'Saturday') then 0 else 1 end) as day_is_weekday

FROM (
    SELECT 
    * FROM 
    UNNEST(generate_date_array('2014-01-01', '2050-01-01', interval 1 day)) as d)