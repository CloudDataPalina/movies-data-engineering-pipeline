CREATE KEYSPACE entertainment
WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};

USE entertainment;

CREATE TABLE movies (
    id text PRIMARY KEY,
    title text,
    year text,
    rating text,
    director text
);
