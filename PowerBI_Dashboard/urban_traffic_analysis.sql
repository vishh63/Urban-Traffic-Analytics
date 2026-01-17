DROP TABLE IF EXISTS traffic_analytics_dataset;

CREATE TABLE traffic_analytics_dataset (
    timestamp TIMESTAMP,
    date DATE,
    hour INT,
    day_of_week VARCHAR(20),
    is_weekend BOOLEAN,
    is_peak_hour BOOLEAN,
    location_id VARCHAR(100),         
    location_name VARCHAR(100),
    borough VARCHAR(50),
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    vehicle_count INT,
    average_speed_kmh DOUBLE PRECISION,
    congestion_level VARCHAR(30),
    travel_time_minutes INT,
    delay_minutes INT,
    incident_reported INT,
    temperature_c INT,
    precipitation_mm DOUBLE PRECISION,
    weather_condition VARCHAR(50),
    is_holiday INT,
    special_event VARCHAR(50),
    road_type VARCHAR(50),
    efficiency_score DOUBLE PRECISION,
    week_part VARCHAR(50),           
    hour_category VARCHAR(30),
    traffic_severity VARCHAR(30),
    congestion_level_num DOUBLE PRECISION
);


select * from traffic_analytics_dataset;


SELECT COUNT(*) FROM urban_traffic;

-- View all column names and data types in the table
SELECT 
    column_name,
    data_type
FROM information_schema.columns
WHERE table_name = 'urban_traffic';


-- Q1. Peak traffic hours (top 5 busiest hours)
SELECT 
    hour,
    AVG(vehicle_count) AS avg_vehicle_count,
    AVG(average_speed_kmh) AS avg_speed
FROM traffic_analytics_dataset
GROUP BY hour
ORDER BY avg_vehicle_count DESC
LIMIT 5;

-- Insight: Shows busiest hours and how speed drops during peaks.


-- Q2. Weekend vs Weekday traffic comparison
SELECT 
    is_weekend,
    AVG(vehicle_count) AS avg_vehicle_count,
    AVG(average_speed_kmh) AS avg_speed,
    AVG(delay_minutes) AS avg_delay
FROM traffic_analytics_dataset
GROUP BY is_weekend;

-- Insight: Understand traffic behavior on weekends vs weekdays.


-- Q3. Top congested locations
SELECT 
    location_name,
    AVG(vehicle_count) AS avg_vehicle_count,
    AVG(travel_time_minutes) AS avg_travel_time,
    AVG(congestion_level_num) AS avg_congestion_score
FROM traffic_analytics_dataset
GROUP BY location_name
ORDER BY avg_congestion_score DESC
LIMIT 10;

-- Insight: Prioritize locations for infrastructure improvement.


-- Q4. Traffic by borough
SELECT 
    borough,
    AVG(vehicle_count) AS avg_vehicle_count,
    AVG(delay_minutes) AS avg_delay,
    AVG(average_speed_kmh) AS avg_speed
FROM traffic_analytics_dataset
GROUP BY borough
ORDER BY avg_vehicle_count DESC;

-- Insight: Compare traffic trends across boroughs.


-- Q5. Weather impact on traffic
SELECT 
    weather_condition,
    AVG(vehicle_count) AS avg_vehicle_count,
    AVG(average_speed_kmh) AS avg_speed,
    AVG(delay_minutes) AS avg_delay
FROM traffic_analytics_dataset
GROUP BY weather_condition
ORDER BY avg_delay DESC;

-- Insight: Identify adverse weather conditions causing delays.


-- Q6. Peak vs Non-peak speed efficiency
SELECT 
    is_peak_hour,
    AVG(efficiency_score) AS avg_efficiency,
    AVG(average_speed_kmh) AS avg_speed,
    AVG(delay_minutes) AS avg_delay
FROM traffic_analytics_dataset
GROUP BY is_peak_hour;

-- Insight: Measures congestion impact and efficiency.


-- Q7. Impact of incidents
SELECT 
    incident_reported,
    AVG(vehicle_count) AS avg_vehicle_count,
    AVG(delay_minutes) AS avg_delay,
    AVG(travel_time_minutes) AS avg_travel_time
FROM traffic_analytics_dataset
GROUP BY incident_reported;

-- Insight: Quantifies the effect of accidents or events.


-- Q8. Time-of-day efficiency trends
SELECT 
    hour_category,
    AVG(vehicle_count) AS avg_vehicle_count,
    AVG(efficiency_score) AS avg_efficiency,
    AVG(delay_minutes) AS avg_delay
FROM traffic_analytics_dataset
GROUP BY hour_category
ORDER BY avg_efficiency ASC;

-- Insight: Identifies the least efficient periods of the day.


-- Q9. Holiday vs Non-holiday traffic
SELECT 
    is_holiday,
    AVG(vehicle_count) AS avg_vehicle_count,
    AVG(delay_minutes) AS avg_delay,
    AVG(average_speed_kmh) AS avg_speed
FROM traffic_analytics_dataset
GROUP BY is_holiday;

-- Insight: Shows whether holidays reduce traffic or improve travel times.


-- Q10. Traffic trends by week part (early vs late week)
SELECT 
    week_part,
    AVG(vehicle_count) AS avg_vehicle_count,
    AVG(congestion_level_num) AS avg_congestion_score,
    AVG(delay_minutes) AS avg_delay
FROM traffic_analytics_dataset
GROUP BY week_part
ORDER BY avg_congestion_score DESC;

-- Insight: Helps plan traffic management for busy days.
