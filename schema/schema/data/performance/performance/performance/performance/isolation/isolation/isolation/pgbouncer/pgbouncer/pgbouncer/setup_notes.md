# PgBouncer Setup Notes

PgBouncer is a lightweight PostgreSQL connection pooler.

Instead of every application creating its own PostgreSQL connection, PgBouncer maintains a pool of reusable connections.

## Transaction Pooling

Transaction pooling assigns a server connection only while a transaction is running.

Once the transaction finishes, the connection returns to the pool for another client.

## Benefits

- Lower memory usage
- Faster client connections
- Reduced PostgreSQL overhead
- Better scalability for high traffic applications
