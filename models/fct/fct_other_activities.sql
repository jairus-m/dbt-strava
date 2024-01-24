WITH activities AS (
    SELECT *
    FROM {{ ref('clean_activities') }}
)

SELECT *
FROM activities
WHERE sport_type != 'VirtualRide' and sport_type != 'Ride' and sport_type != 'MountainBikeRide' and sport_type != 'Run'