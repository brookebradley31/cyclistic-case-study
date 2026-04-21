-- Author: Brooke Bradley
-- Date: April 2026
-- Project: Cyclistic Case Study (Google Data Analytics)
-- Purpose: Prepare data for Tableau

SELECT 
  member_casual,
  rideable_type,
  day_of_week,
  month,
  COUNT(ride_id) AS total_trips,
  AVG(ride_length) AS avg_ride_duration
FROM `cyclistic-project-492616.cyclistic_rides.rides-past-year`
GROUP BY 
  member_casual, 
  rideable_type, 
  day_of_week, 
  month
