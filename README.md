# Urban Traffic Analytics – End-to-End Data Analysis Project  
**Python | SQL | Power BI**

## Project Overview
This project presents a complete **end-to-end urban traffic analysis solution**, covering **Python-based Exploratory Data Analysis (EDA), SQL analytics, and an interactive Power BI dashboard**.

The objective is to analyze **traffic volume, congestion, delays, speed efficiency, and external factors** (weather, incidents, holidays) to support **data-driven urban traffic management and planning**.

---

## Business Objectives
- Identify **peak traffic hours** and congestion patterns
- Compare **weekday vs weekend** traffic behavior
- Analyze **location-wise and borough-wise congestion**
- Measure **impact of weather, incidents, and holidays**
- Evaluate **traffic efficiency and delays**
- Present insights using **interactive dashboards**

---

## Dataset Description
The dataset contains **time-based, location-based, and contextual traffic data**.

### Key Columns:
- **Time:** `timestamp`, `date`, `hour`, `day_of_week`
- **Location:** `location_name`, `borough`, `latitude`, `longitude`
- **Traffic Metrics:**  
  `vehicle_count`, `average_speed_kmh`, `delay_minutes`, `travel_time_minutes`
- **Conditions:**  
  `weather_condition`, `incident_reported`, `is_peak_hour`, `is_weekend`, `is_holiday`
- **Engineered Features:**  
  `hour_category`, `week_part`, `traffic_severity`, `congestion_level_num`, `efficiency_score`

---

## 1. Python Exploratory Data Analysis (EDA)
**Tools:** Pandas, NumPy, Matplotlib, Seaborn

### Tasks Performed:
- Data cleaning and datatype correction
- Handling missing values (numerical & categorical)
- Feature understanding and distribution analysis
- Traffic trend analysis over time
- Speed vs delay and congestion analysis
- Feature engineering for better insights

 **Outcome:**  
Prepared a clean, structured dataset for SQL analytics and Power BI visualization.

---

## 2. SQL Analytics (PostgreSQL)
**Goal:** Extract actionable insights using structured queries.

### Key Analyses:
- Peak traffic hours and speed degradation
- Weekend vs weekday traffic comparison
- Most congested locations
- Borough-wise traffic patterns
- Weather impact on speed and delay
- Incident impact on traffic flow
- Peak vs non-peak efficiency comparison
- Holiday and weekly traffic trends

 **Outcome:**  
Delivered business-focused insights directly aligned with dashboard storytelling.

---

## 3. Power BI Interactive Dashboard
**Focus:** Visual storytelling and decision support

### Dashboard Components:
- **KPI Cards:**  
  Total Vehicles, Average Speed, Total Delay, Total Incidents, Efficiency Score
- **Line Chart:** Traffic trends over time
- **Map Visual:**  
  Location-based traffic volume using latitude & longitude
- **Bar Chart:** Traffic volume by road type
- **Slicers:**  
  Date, Location, Weather, Peak Hour, Holiday

 **Outcome:**  
A professional, executive-level dashboard for traffic monitoring and analysis.

---

## Key Insights
- Peak hours show **high congestion and low speed**
- Rain and fog significantly increase delays
- Certain locations consistently experience high congestion
- Incidents drastically increase travel time
- Non-peak hours show higher traffic efficiency

---

## Tools & Technologies
- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **SQL:** PostgreSQL
- **Power BI:** DAX, Power Query, Interactive Visuals

---
