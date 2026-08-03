-- Session 1

BEGIN;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

SELECT amount
FROM orders
WHERE id=1;

-- Leave transaction open

-- Session 2 updates the row

-- Session 1

SELECT amount
FROM orders
WHERE id=1;

COMMIT;
