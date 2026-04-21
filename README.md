# Case Study: Cyclistic Bike-Share Analysis
### Google Data Analytics Professional Certificate Capstone

## Introduction

This case study is the capstone project for the Google Data Analytics Professional Certificate. I applied the analysis process taught in the course to analyze data on Cyclistic, a fictional bike-share company in Chicago.

Cyclistic has two types of consumers: casual riders and members. Casual riders are customers who purchase single-rides or day-passes, and members are customers who purchase annual memberships. The financial analysts have determined that annual members are more profitable than casual riders. The director of marketing believes converting casual riders to members will most efficiently maximize the number of annual members, and therefore maximize profit.

## 1. Executive Summary (Ask)

As a junior data analyst on the marketing analyst team at Cyclistic, my goal is to analyze historical trip data to understand how annual members and casual riders use the service differently. By identifying trends, I provide evidence-based recommendations to convert casual riders into long-term members, to maximize company growth.

Key Stakeholders: 

* Lily Moreno: Director of Marketing and my manager. She will design marketing campaigns based on the insights we find.
* Cyclistic executive team: The team members who will decide whether to approve the final recommended marketing program.

## 2. Data Sources (Prepare)

Data Source: [divvy-tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html)
This public data has been made available by Motivate International Inc. under this [license.](https://divvybikes.com/data-license-agreement)

* Past 12 months of historical trip data from Cyclistic
* Around 3.7 million rows of data (trips) across 12 CSV files
* Original and current data reflects accurate recent rider behavior 

## 3. Data Cleaning and Manipulation (Process)

To prepare the data for analysis, I used **SQL (BigQuery)** to clean and aggregate 12 months of data into a single table. My processing steps included:

* **Data Aggregation:** Combined 12 individual CSV files into one table using `UNION ALL`.
* **Data Transformation:** Created new columns for `ride_length` (calculated in minutes), `day_of_week`, and `month` to analyze trends across different time periods.
* **Data Cleaning:**
    * Removed records with missing `start_station_name` or `end_station_name`
    * Filtered out trips where `started_at` was greater than `ended_at`
* **Validation:** Performed a duplicate check on the unique `ride_id` to ensure data integrity.

[View the full SQL script here](./sql_queries/data_cleaning_v1.sql)

## 4. Summary of Analysis (Analyze)

To perform analysis on the trip data, I ran queries in SQL comparing the number of rides and average trip length for casual riders vs. members in total, by day of the week, and by month.

[View the full SQL script here](./sql_queries/data_analysis_v1.sql)

Trend 1: Casual riders ride for longer on average than annual members.

Trend 2: Casual riders ride most frequently on weekends, and annual riders ride most on weekdays.

Trend 3: Both casual and annual riders ride more in the summer, but casual riders decline more steeply after August.

## 5. Data Visualization (Share)

I shrank the file size of the dataset by aggregating in SQL, grouping by rider type and date to maintain analytical accuracy, and uploading the data to Tableau Public.

[View the full SQL script here](./sql_queries/data_aggregation_v1.sql)

Using Tableau, I visualized the trends.

### Total Rides
<p align="center">
<img width="800" alt="Total Rides (2)" src="https://github.com/user-attachments/assets/d5b0a1ef-e057-4b5c-b6e9-c7cb942083a7" />


* The majority of people using Cyclistic are members
* 35.6% of all riders are casual
* 64.4% of all riders are members
* 3,739,226 total riders

<p align="center">
<img width="800" alt="Ride Lengths (mins) (1)" src="https://github.com/user-attachments/assets/0d6412bf-6cb1-4231-9d1a-63cf457097ac" />


* Casual riders go for longer rides than members on average (21.79 mins vs. 11.95 mins).
* The average ride length of casual riders is around 82% longer than the average ride length of annual members.

### Weekly Trends
<p align="center">
<img width="800" alt="Weekly Totals" src="https://github.com/user-attachments/assets/6b2b767b-7991-4152-b3eb-a6bce2d05c1a" />


* Casual riders ride more frequently on the weekends.
* Members ride more frequently on weekdays.

<p align="center">
<img width="800" alt="Weekly Lengths (mins)" src="https://github.com/user-attachments/assets/71b5de00-63eb-4927-b7e2-05fa1139c7d6" />


* On average, casual riders go for longer rides on the weekends.
* Average length of bike rides is consistent for members across days of the week.
  

### Monthly Trends

<p align="center">
<img width="800" alt="Monthly Lengths" src="https://github.com/user-attachments/assets/d53da843-52b2-4162-ba18-865f0dd04b0a" />


* Both members and casual riders ride more frequently in the months May through October than in November through April.
* Casual riders show a sharper decline from August through December than members.

<p align="center">
<img width="800" alt="Monthly Totals (1)" src="https://github.com/user-attachments/assets/8ecc15f9-01e8-46d0-acca-9a5df620b627" />



* Casual riders go for longer bike rides on average in the summer months.
* Members' average length of bike ride is more consistent throughout the year.



Dashboard Link: [Link](https://public.tableau.com/views/CyclisticBikeShareDashboard_17767915102020/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

<p align="center">
<img width="1998" height="1598" alt="Cyclistic Dashboard" src="https://github.com/user-attachments/assets/99df7076-6887-4dff-8006-ded2e3379833" />


### Interpretation

**Casual** riders ride most on **weekends** and go for **longer rides**. From this, we can infer that casual riders ride for leisure or during free time.
Members ride most on **weekdays** and **consistently** throughout the year. We can conclude members ride routinely for reasons such as commuting or other necessities.


## 6. Recommendations (Act)

From the analysis above, we can design marketing strategies to convert casual riders to members.

**Recommendation 1: Weekend Memberships**

*The Insight:* Data analysis reveals that casual riders primarily use the service on the weekends, with average trip durations around 82% longer than those of annual members (21.79 vs 11.95 minutes).

*The Strategy:* Introduce a targeted "Weekend Pass" or a Friday–Sunday membership option.

*The Goal:* By offering a lower price point specifically for weekend use, Cyclistic can capture high-volume weekend users who currently don't find a full annual membership worth the price.

**Recommendation 2: Summer Conversion Campaigns**

*The Insight:* Number of rides peaks significantly across both customers during the summer months, but casual users show a sharper decline as seasons change from summer to winter.

*The Strategy:* Launch promotions in the summer when demand is the highest to convert users to annual memberships. These could include discounted annual memberships or a few free months' incentive.

*The Goal:* Secure annual revenue during the period of highest user engagement and reduce the seasonal attrition seen in casual rider data.

**Recommendation 3: Strategic Infrastructure & Commuter Expansion**

*The Insight:* Annual members demonstrate utilitarian usage evidenced by trips that are consistent, shorter, and distributed throughout the week, suggesting they use the service for routine commuting rather than leisure.

*The Strategy:* Prioritize station expansion near major transit hubs and commercial business districts.

*The Goal:* By optimizing station density throughout the city, Cyclistic becomes a more viable method of transportation, allowing casual riders to convert to memberships for their daily commute.

## Conclusion

Overall, the analysis of the past 12 months of Cyclistic trip data successfully identified clear behavioral trends: while annual members utilize Cyclistic as a consistent commuter tool, casual riders use the service for leisure, riding longer on average and primarily on weekends.

These insights allow Cyclistic to design marketing strategies to convert casual riders to annual members. 

The data-driven recommendations I suggest for Cyclistic are weekend memberships to capture the weekend rider demographic, summer promotions to secure year-round customers, and expanding bike stations to allow for more casual members to use the bikes for commuting.

This project served as the capstone of my Google Data Analytics Certificate, refining my ability to clean and organize data for analysis, complete analysis and calculations using SQL, and create data visualizations using Tableau to translate technical findings into clear stakeholder recommendations.
