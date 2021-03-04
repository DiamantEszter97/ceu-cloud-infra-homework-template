-- !preview conn=DBI::dbConnect(RSQLite::SQLite())

CREATE TABLE diamanteszter97_homework.gold_allviews
    WITH (
          format = 'PARQUET',
          parquet_compression = 'SNAPPY',
          external_location = 's3://2003615-eszter/de4/gold_allviews'
    ) AS select article, sum(views) as total_top_views, min(rank) as top_rank, count(date) as ranked_days from diamanteszter97_homework.silver_views group by article order by total_top_views desc;
    
    
