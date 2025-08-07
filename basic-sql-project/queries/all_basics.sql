--Create a table using standard commands

WITH count_tickets AS (
    SELECT username, passenger_id, COUNT(*) AS count_tickets
    FROM passengers
    JOIN purchase ON purchase.passenger_id = passengers.id
    GROUP BY username, passenger_id
    HAVING COUNT(*) > 1
)
    
SELECT username, count_tickets FROM count_tickets
ORDER BY count_tickets DESC;