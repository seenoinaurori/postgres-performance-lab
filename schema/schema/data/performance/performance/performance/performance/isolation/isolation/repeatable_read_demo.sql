-- Session 1

BEGIN;

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;

SELECT amount
FROM orders
WHERE id=1;

-- Session 2 updates row and commits

-- Session 1

SELECT amount
FROM orders
WHERE id=1;

COMMIT;
