-- !preview conn=DBI::dbConnect(RSQLite::SQLite())

CREATE TABLE diamanteszter97_homework.silver_views
    WITH (
          external_location = 's3://2003615-eszter/de4/silver_views'
    ) AS select * from diamanteszter97_homework.bronze_views;