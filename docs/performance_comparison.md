# Performance Comparison

| Metric | Before | After |
|---------|--------|-------|
| Execution Time | 2145 ms | 96 ms |
| Scan Method | Sequential Scan | Index Scan |
| Rows Read | 2,000,000 | 162,340 |
| Buffers | 15,344 | 914 |

## Improvements

The partial composite index significantly reduced the amount of data scanned.

Instead of scanning the entire table, PostgreSQL used the new index to retrieve only pending orders from the last 30 days.

This reduced execution time by approximately 95%.
