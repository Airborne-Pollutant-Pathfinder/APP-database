CREATE TABLE IF NOT EXISTS sensors (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    latitude FLOAT NOT NULL,
    longitude FLOAT NOT NULL,
    radius FLOAT NOT NULL
);
