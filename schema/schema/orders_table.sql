DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    id BIGSERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    amount NUMERIC(10,2) NOT NULL,
    status VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL
);
