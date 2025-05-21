# pulling all data for time to contact
COPY (
SELECT 
    t1.name AS name,
    t1.*,
    t2.*,
    t3.*
FROM
    fg_02_24 t1
INNER JOIN
    swing_time_24 t2 ON t1.name = t2.name
INNER JOIN
    swing_value_18_24 t3 ON t1.name = t3.batter
WHERE
    t1.season = 2024 AND
    t2.season = 2024 AND
    t3.season = 2024
) TO 'C:/Database/data/db_queries/ttc_research.csv' 
WITH (FORMAT CSV, HEADER);
