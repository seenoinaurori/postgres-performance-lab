CREATE INDEX idx_pending_recent
ON orders(created_at DESC, customer_id)
WHERE status='pending';

ANALYZE orders;

EXPLAIN (ANALYZE, BUFFERS)

SELECT
    customer_id,
    SUM(amount) AS total_spent
FROM orders
WHERE
    status='pending'
AND created_at>=NOW()-INTERVAL '30 days'
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 20;
