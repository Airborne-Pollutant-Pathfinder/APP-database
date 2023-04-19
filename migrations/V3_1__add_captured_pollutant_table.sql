CREATE TABLE captured_pollutant (
                                   captured_pollutant_id INT(11) NOT NULL AUTO_INCREMENT,
                                   sensor_id INT(11) NOT NULL,
                                   pollutant_id INT(11) NOT NULL,
                                   datetime DATETIME NOT NULL,
                                   value DECIMAL(10, 2) NOT NULL,
                                   PRIMARY KEY (captured_pollutant_id),
                                   FOREIGN KEY (sensor_id) REFERENCES sensor(sensor_id),
                                   FOREIGN KEY (pollutant_id) REFERENCES pollutant(pollutant_id)
);
