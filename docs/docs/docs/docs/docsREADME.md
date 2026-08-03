# PostgreSQL Performance Lab

## Overview

This project demonstrates PostgreSQL performance tuning techniques including:

- Creating large datasets
- Query optimization
- EXPLAIN ANALYZE
- Transaction isolation
- PgBouncer connection pooling

---

## Objectives

- Generate a table with two million records
- Measure slow query performance
- Optimize queries using indexes
- Compare execution plans
- Demonstrate isolation levels
- Configure PgBouncer
- Document performance improvements

---

## Repository Structure

```
schema/
data/
performance/
isolation/
pgbouncer/
docs/
```

---

## Setup

Create the table:

```sql
\i schema/orders_table.sql
```

Generate data:

```sql
\i data/generate_orders.sql
```

Run slow query:

```sql
\i performance/slow_query.sql
```

Create index:

```sql
\i performance/index_optimization.sql
```

Run isolation demos:

```sql
\i isolation/read_committed_demo.sql

\i isolation/repeatable_read_demo.sql
```

Test PgBouncer:

```bash
psql -h 127.0.0.1 -p 6432 -U postgres bootcamp
```

---

## Technologies

- PostgreSQL
- SQL
- PgBouncer

---

## Author

Your Name
