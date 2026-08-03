# Isolation Level Results

## READ COMMITTED

Session 1 initially read the value.

Session 2 updated the same row and committed.

When Session 1 queried again, it saw the updated value.

This demonstrates that READ COMMITTED always reads the latest committed data.

---

## REPEATABLE READ

Session 1 began a transaction and read a row.

Session 2 updated and committed changes.

Session 1 queried again but continued seeing the original value because PostgreSQL maintains a consistent snapshot throughout the transaction.

---

## Summary

| Isolation Level | Observed Behavior |
|-----------------|------------------|
| READ COMMITTED | Sees committed changes immediately |
| REPEATABLE READ | Maintains a consistent snapshot |
