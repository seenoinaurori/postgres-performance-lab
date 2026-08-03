INSERT INTO orders (customer_id, amount, status, created_at)
SELECT
    (random()*100000)::int,
    round((random()*1000)::numeric,2),
    (
        ARRAY[
            'pending',
            'completed',
            'cancelled'
        ]
    )[floor(random()*3+1)],
    NOW() - (random()*365||' days')::interval
FROM generate_series(1,2000000);

ANALYZE orders;
