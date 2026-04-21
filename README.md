# draft!!!! 
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

To preform analysis on the trip data, I ran queries in SQL comparing the number of rides and average trip length for casual riders vs. members in total, by day of the week, and by month.

Trend 1: Casual riders average ride length is approximately doiuble the length of annual members' rides.

Trend 2: Casual riders ride most on weekends and annual riders ride most on weekdays.

Trend 3: Casual riders ride significatly most in the summer than the winter. Annual riders ride more consistantly throughout the year.

[View the full SQL script here](./sql_queries/data_analysis_v1.sql)

## 5. Data Visualization (Share)

V. Share
This is where your visualizations go.

Dashboard Link: [Link to your Tableau Public profile]

Tip: You can take a screenshot of your best chart and drag/drop it directly into the GitHub editor to embed it here!


## 6. Reccomendations (Act)



VI. Act
What should the company do?

Recommendation 1

Recommendation 2

Recommendation 3

4. How to Run This Project
Tell the reader how to see your work.

The raw data can be found in the /data folder.

The cleaning process is documented in cleaning_script.sql.

The final report is available as a PDF in this repository.

Helpful Formatting Tips:
To create a code block: Wrap your code in triple backticks so it looks professional:

SQL
SELECT * FROM `project.dataset.table` WHERE length > 60;
To check your work: Click the "Preview" tab at the top of the GitHub editor to see how it looks before you save it.

Which tool did you choose for your analysis—SQL, R, or are you doing it all in a spreadsheet?
