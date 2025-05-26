# ⚾  Decoding-the-Cubs-Offensive-Performance-Through-Data

## 📌 Project Overview  
This project explores the offensive performance of the **Chicago Cubs** using structured SQL queries on Major League Baseball data. The analysis covers key player statistics, team-wide metrics, and historical trends to highlight standout performances and long-term contributors to the franchise.

The entire analysis was performed using SQL and dashboard development in tools like Power BI. 

---

## 📁 Folder Structure

<pre> /Decoding-the-Cubs-Offensive-Performance-Through-Data/
│
├── data/
│ └── hitting_MLB.csv
│ └── attendane data (Kaggle source) # Chicago Cubs attendance over the years 
│ 
├── scripts/
│ └── Chicago Cubs sql.sql # SQL queries and analysis
│
├── dashboards/
│ └── CHC Offense Dashboard.pbix # Power BI dashboard </pre>  


## 🔍 Key Insights
- 💣 Identified top Cubs players by **single-season and career home runs**, showcasing offensive legends.
- 🔁 Analyzed **player longevity**, including those with the most **consecutive seasons** as Cubs players.
- 📊 Aggregated **team metrics by season**, including **batting average (AVG)**, **on-base plus slugging (OPS)**, **home runs**, and **plate appearances**.
- ⚾ Ranked **seasonal leaders in total bases** using window functions to spotlight consistent high performers.
- 🧮 Counted **total number of unique players** who have ever played for the Cubs, giving historical depth to the roster.
- 🏟️ Discovered **year-by-year player participation trends**, revealing roster sizes and shifts over time.
- ⏳ Used advanced SQL techniques like **CTEs and ROW_NUMBER** to calculate streaks and player tenure efficiently.
- 📅 Created a strong foundation for **time-series visualizations**, enabling interactive dashboards in Power BI.
- 🧠 Gained insights into how player performance and team strategy evolved across different eras.


---

## 🛠 Tools & Technologies
- **PostgreSQL** – Querying and aggregation
- **Window Functions** – For ranking and time-based analysis
- **Common Table Expressions (CTEs)** – For streak and cohort calculations
  
- Power BI Analysis Overview  
For the dashboard portion of this project, the original MLB dataset was cleaned, transformed, and structured into a robust data model using Power BI.

### 🔄 Data Preparation:
- ✅ **CSV Segmentation**: The original dataset was split into four focused CSV files:
  - `teams.csv` – Team-level details
  - `players.csv` – Player identifiers and names
  - `seasons.csv` – Seasonal breakdowns
  - `stats.csv` – Offensive statistics (HRs, AVG, OPS, etc.)
- 🌐 **Web Scraping**: Attendance data across seasons was scraped from a reliable source and added to the model to analyze fan engagement over time.
- 🔗 **Data Modeling**: All sources were connected in Power BI through relationships and lookups to create a unified star schema optimized for analysis.

### 💡 Dashboard Highlights:
- **Seasonal Trends**: Year-over-year breakdown of team stats and attendance.
- **Top Players**: Leaderboards for home runs, total bases, and longevity.
- **Interactive Filters**: Slicers for players, seasons, and stats for dynamic exploration.

---

## 📈 Results  
This project supports:

- Historical performance reviews for the Cubs  
- Storytelling with data  
- Foundational analysis for dashboard visualization  

---

## 🔗 Links  
📂 [Dataset – Kaggle: Sports Data by chiefzach12](https://www.kaggle.com/datasets/chiefzach12/sports-data)


---

### ⚠️ Disclaimer  
This project is intended for educational and portfolio purposes only.  
- The dataset used in this analysis was obtained from **Kaggle** and is assumed to be public.  
- No personal or sensitive data is used.  
- If you're the data owner and have concerns, feel free to contact the repository owner via [GitHub]([https://github.com](https://github.com/matmarcinek)).

