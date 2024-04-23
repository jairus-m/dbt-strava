with raw_activities AS (
    SELECT * FROM {{ source('strava', 'raw_activities') }}   
)

SELECT *
FROM raw_activities
limit 50