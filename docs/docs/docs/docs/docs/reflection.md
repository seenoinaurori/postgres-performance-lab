# Reflection

This lab provided valuable experience in PostgreSQL performance tuning and database administration. One of the most useful lessons was learning how to use EXPLAIN ANALYZE to understand how PostgreSQL executes SQL queries. Instead of assuming a query is slow, I learned how to identify whether PostgreSQL performs a sequential scan or an index scan, how many rows are processed, and how much time is spent in each stage of execution.

Creating a large dataset with two million rows made the performance differences much easier to observe. Initially, the aggregation query required a sequential scan, causing PostgreSQL to examine every row in the table. After creating a partial composite index, the query execution time dropped dramatically because PostgreSQL only needed to search the indexed rows. This demonstrated how indexes reduce unnecessary disk reads and improve overall query efficiency.

The transaction isolation demonstrations helped me understand how PostgreSQL guarantees data consistency. I observed that READ COMMITTED always returns the latest committed data, while REPEATABLE READ keeps a consistent snapshot for the entire transaction. This behavior was particularly interesting because it showed how different isolation levels affect application behavior in concurrent environments.

Another important lesson was understanding connection pooling with PgBouncer. Before this lab, I assumed database connections were inexpensive. I learned that opening many direct PostgreSQL connections increases memory usage and CPU overhead. PgBouncer reduces these costs by allowing multiple clients to share a smaller number of database connections, making applications more scalable under heavy workloads.

The most valuable part of the assignment was comparing execution plans before and after optimization. Seeing measurable improvements in execution time reinforced the importance of indexes and query analysis. Overall, this lab improved my understanding of SQL performance tuning, transaction management, and production-ready PostgreSQL administration.
