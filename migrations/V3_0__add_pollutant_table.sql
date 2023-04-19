CREATE TABLE pollutant (
                           pollutant_id INT NOT NULL AUTO_INCREMENT,
                           abbreviation VARCHAR(10) NOT NULL,
                           units VARCHAR(20) NOT NULL,
                           full_name VARCHAR(100) NOT NULL,
                           PRIMARY KEY (pollutant_id)
);

INSERT INTO pollutant (abbreviation, units, full_name)
VALUES ('CO', 'ppm', 'Carbon Monoxide'),
       ('NO2', 'ppb', 'Nitrogen Dioxide'),
       ('O3', 'ppb', 'Ozone'),
       ('PM2_5', 'µg/m³', 'Particulate Matter 2.5'),
       ('PM10', 'µg/m³', 'Particulate Matter 10'),
       ('SO2', 'ppb', 'Sulfur Dioxide');
