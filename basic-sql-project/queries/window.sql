--Create a table using standard commands + window counting

WITH promo_advanced AS (
	SELECT username, price, purchase_date, flight_name,
		CASE
    		WHEN promo.id IS NOT NULL THEN TRUE
        	ELSE FALSE
    	end AS promo_status,
    	CASE
        	WHEN promo.id IS NOT NULL THEN price * (1 - promo.discount)
        	ELSE price
    	END AS new_price
	FROM purchase
	join passengers ON purchase.passenger_id = passengers.id
	JOIN tickets on purchase.ticket_id = tickets.id
	JOIN flights ON tickets.flight_id = flights.id
	LEFT JOIN promo on promo.flight_id = flights.id
		and purchase.purchase_date BETWEEN promo.start_date AND promo.end_date
  )
  
SELECT 
	username,
    ROUND(AVG(new_price) OVER (PARTITION by username), 2) AS avg_ticket_price
FROM promo_advanced
ORDER BY avg_ticket_price DESC