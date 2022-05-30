SELECT
*
FROM
(SELECT 
    date,
    EXTRACT(year FROM date) AS year,
    time,
    day,
    UPPER(SUBSTR(day,1,3)) AS day_of_week,
    station_name,
    station_id,
    code AS delay_code,
    min_delay,
    bound,
    line,
    vehicle
 FROM `jaytadata.ttcproject.ttc-delay-table`
)
 WHERE year >= 2017