-- !preview conn=DBI::dbConnect(RSQLite::SQLite())

CREATE EXTERNAL TABLE
diamanteszter97_homework.bronze_views (
    article STRING,
    views INT,
    rank INT,
    date DATE,
    retrieved_at TIMESTAMP) 
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION 's3://2003615-eszter/de4/views/';