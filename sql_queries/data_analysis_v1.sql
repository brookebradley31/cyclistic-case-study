-- Author: Brooke Bradley
-- Date: April 2026
-- Project: Cyclistic Case Study (Google Data Analytics)
-- Purpose: Analyze trip data

-- Number of rides and average lengths for casual vs. members
SELECT
  member_casual,
  COUNT(*) AS rides,
  AVG(ride_length) AS avg_length
FROM
   `cyclistic-project-492616.cyclistic_rides.rides-past-year`
GROUP BY
  member_casual;


-- Number of rides and average lengths per day for casual vs. members
SELECT 
  day_of_week,
  member_casual,
  COUNT(*) AS rides,
  AVG(ride_length) AS avg_length,
FROM
  `cyclistic-project-492616.cyclistic_rides.rides-past-year`
GROUP BY
member_casual, day_of_week
ORDER BY
member_casual, rides DESC;

-- Number of rides and average lengths per month for casual vs. members
SELECT
  month,
  member_casual,
  COUNT(*) AS rides,
  AVG(ride_length) AS avg_length
FROM
   `cyclistic-project-492616.cyclistic_rides.rides-past-year`
GROUP BY
  member_casual, month
ORDER BY
  member_casual, rides DESC;
