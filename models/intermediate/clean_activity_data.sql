{{ config(materialized='table') }}

with clean_activity_data as (
    SELECT *, TIMESTAMP_SECONDS(CAST(date/1000000000 AS INT64)) AS timestamp
    FROM `strava-activity.StravaActivities.clean`
    ORDER BY timestamp DESC
)

select * from clean_activity_data