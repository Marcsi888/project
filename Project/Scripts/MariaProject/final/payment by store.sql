CREATE OR REPLACE VIEW final.v_payments_received_by_store AS
SELECT s.store_id,
       s.address_id,
       a.address,
       SUM(p.amount) AS total_payment_received
FROM payment p
INNER JOIN customer c ON p.customer_id = c.customer_id
INNER JOIN rental r ON p.rental_id = r.rental_id
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN store s ON i.store_id = s.store_id
INNER JOIN address a ON s.address_id = a.address_id
GROUP BY s.store_id, s.address_id, a.address;
