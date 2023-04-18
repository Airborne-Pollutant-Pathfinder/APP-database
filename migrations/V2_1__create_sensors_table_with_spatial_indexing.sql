-- Create the new sensors table
CREATE TABLE sensors (
                         sensor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
                         location POINT NOT NULL SRID 4326,
                         radius_meters FLOAT NOT NULL,
                         area GEOMETRY NOT NULL SRID 4326,
                         SPATIAL INDEX area_index (area)
);

-- Create the trigger that will calculate the area of the sensor
DELIMITER //

CREATE TRIGGER calculate_area
    BEFORE INSERT ON sensors
    FOR EACH ROW
BEGIN
    IF NEW.radius_meters > 0 THEN
        SET NEW.area = ST_Buffer(NEW.location, NEW.radius_meters);
    ELSE
        SET NEW.area = ST_GeomFromText('POINT EMPTY', 4326);
    END IF;
END//

DELIMITER ;