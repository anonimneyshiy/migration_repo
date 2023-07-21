CREATE TABLE IF NOT EXISTS test_table
(
    app_id         Int64,
    name           String,
    device_os      String,
    dt             Date
)


    ENGINE = MergeTree
        PARTITION BY toYYYYMMDD(dt)
        ORDER BY name;
