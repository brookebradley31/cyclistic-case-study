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

[View the full SQL script here](./sql_queries/data_analysis_v1.sql)

Trend 1: The average length of casual rides are approximately doiuble the average length of annual members' rides.

Trend 2: Casual riders ride most frequently on weekends and annual riders ride most on weekdays.

Trend 3: Both casual and annual riders ride more in the summer.

## 5. Data Visualization (Share)

I shrank the file size of the dataset by aggregating in SQL, grouping by rider type and date to maintain analytical accuracy uploading the data to Tableau Public.

[View the full SQL script here](./sql_queries/data_aggregation_v1.sql)

Using Tableau I visualized the trends.

### Total Rides

<img width="620" height="406" alt="Total Rides (1)" src="https://github.com/user-attachments/assets/4cb40aba-d828-4b1c-bbb7-b3151855676d" />

<img width="674" height="1238" alt="Ride Lengths (mins)" src="https://github.com/user-attachments/assets/56407a43-4543-4406-8dc0-6581dc524871" />

### Weekly Trends

<img width="1560" height="1182" alt="Weekly Totals" src="https://github.com/user-attachments/assets/6b2b767b-7991-4152-b3eb-a6bce2d05c1a" />

<img width="1530" height="1182" alt="Weekly Lengths (mins)" src="https://github.com/user-attachments/assets/71b5de00-63eb-4927-b7e2-05fa1139c7d6" />

### Monthly Trends

<img width="1370" height="1182" alt="Monthly Lengths" src="https://github.com/user-attachments/assets/d53da843-52b2-4162-ba18-865f0dd04b0a" />

<img width="1876" height="1182" alt="Monthly Totals" src="https://github.com/user-attachments/assets/c7cc18fe-42ee-4b4e-b963-28140e044505" />




Trend 1: The average length of casual rides are approximately doiuble the average length of annual members' rides.

Trend 2: Casual riders ride most frequently on weekends and annual riders ride most on weekdays.

Trend 3: Casual riders go for longer rides on the weekends. Annual members' average ride lengths are consistent throughout the week.

Trend 4: Both casual and annual riders ride more in the summer.

Trend 5: Casual riders go for longer rides in the summer. Annual members' average ride lengths are consistent throughout the year.


Dashboard Link: [Link to your Tableau Public profile](https://public.tableau.com/shared/2Y3SPY3MG?:display_count=n&:origin=viz_share_link)

<div class='tableauPlaceholder' id='viz1776792712800' style='position: relative'><noscript><a href='#'><img alt='Cyclistic Dashboard ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Cy&#47;CyclisticBikeShareDashboard_17767915102020&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='CyclisticBikeShareDashboard_17767915102020&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Cy&#47;CyclisticBikeShareDashboard_17767915102020&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>  


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
