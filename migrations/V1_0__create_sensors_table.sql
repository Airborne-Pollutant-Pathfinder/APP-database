CREATE TABLE IF NOT EXISTS sensors (
    sensor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    radius_meters FLOAT NOT NULL
);
