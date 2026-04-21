-- Author: Brooke Bradley
-- Date: April 2026
-- Project: Cyclistic Case Study (Google Data Analytics)
-- Purpose: Merge 12 months of data, perform initial cleaning, and add time-based rows.

-- Create table rides-past-year with all 12 files
CREATE OR REPLACE TABLE `cyclistic-project-492616.cyclistic_rides.rides-past-year` AS 
SELECT
  ride_id,
  rideable_type,
  started_at,
  ended_at,
  start_station_name,
  start_station_id,
  end_station_name,
  end_station_id,
  start_lat,
  start_lng,
  end_lat,
  end_lng,
  member_casual,

  -- Ride length in minutes
  TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length,
  -- Day of the week 
  FORMAT_TIMESTAMP('%A', started_at) AS day_of_week,
  -- Month
  FORMAT_TIMESTAMP('%B', started_at) AS month
FROM(
  SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202603-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202602-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202601-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202512-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202511-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202510-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202509-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202508-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202507-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202506-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202505-divvy-tripdata`
  UNION ALL SELECT * FROM `cyclistic-project-492616.cyclistic_rides.202504-divvy-tripdata`
)
WHERE 
    start_station_name IS NOT NULL 
    AND end_station_name IS NOT NULL
    AND started_at < ended_at;

-- Verify no duplicates
SELECT 
    ride_id, 
    COUNT(*) 
FROM 
  `cyclistic-project-492616.cyclistic_rides.rides-past-year`
GROUP BY 
    ride_id
HAVING 
    COUNT(*) > 1;

SELECT 
* 
FROM 
  `cyclistic-project-492616.cyclistic_rides.rides-past-year`;

