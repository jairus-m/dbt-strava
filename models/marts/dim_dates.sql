WITH dates AS (
    SELECT 
        FORMAT_TIMESTAMP('%Y%m%d', PARSE_TIMESTAMP('%m-%d-%Y', date)) AS date_id,
        date,
        time,
        time_bin,
        EXTRACT(DAYOFWEEK FROM PARSE_TIMESTAMP('%m-%d-%Y', date)) AS day_of_week_num,
        FORMAT_DATE('%A', PARSE_TIMESTAMP('%m-%d-%Y', date)) AS day_of_week,
        EXTRACT(ISOWEEK FROM PARSE_TIMESTAMP('%m-%d-%Y', date)) AS week_num,
        EXTRACT(MONTH FROM PARSE_TIMESTAMP('%m-%d-%Y', date)) AS month_num,
        FORMAT_DATE('%B', PARSE_TIMESTAMP('%m-%d-%Y', date)) AS month
    FROM {{ ref('obt_clean_activities') }}
)

SELECT * FROM dates