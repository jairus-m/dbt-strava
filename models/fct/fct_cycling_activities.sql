WITH activities AS (
    SELECT *
    FROM {{ ref('clean_activities') }}
)

SELECT *
FROM activities
WHERE sport_type = 'VirtualRide' OR sport_type = 'Ride' or sport_type = 'MountainBikeRide'