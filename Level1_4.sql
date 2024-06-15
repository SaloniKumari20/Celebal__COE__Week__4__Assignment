SELECT ROUND(AVG(LAT_N), 4) AS MEDIAN_LAT_N
FROM (
    SELECT LAT_N
    FROM STATION
    ORDER BY LAT_N
    LIMIT 2 - (SELECT COUNT(*) FROM STATION) % 2    -- Handles odd/even row count
    OFFSET (SELECT (COUNT(*) - 1) / 2 FROM STATION) -- Handles the offset to the median
) AS T;
