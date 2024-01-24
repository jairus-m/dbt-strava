WITH activities AS (
    SELECT *
    FROM {{ ref('clean_activities') }}
)

SELECT *
FROM activities
WHERE sport_type = 'Run'