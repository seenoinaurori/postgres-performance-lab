# Optimization Report

## Query

Customer spending in the last 30 days.

---

## Before Plan

Sequential Scan

Execution Time:
2145 ms

---

## Change

Created partial composite index:

```sql
CREATE INDEX idx_pending_recent
ON orders(created_at DESC, customer_id)
WHERE status='pending';
```

---

## After Plan

Index Scan

Execution Time:
96 ms

---

## Result

Performance improved from approximately **2145 ms** to **96 ms**, representing roughly a **22× speed improvement**.
