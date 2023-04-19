INSERT INTO sensor (location, radius_meters, source, source_id)
VALUES (ST_GeomFromText('POINT(33.1375 -96.7679)', 4326), 1500, 'OPENAQ', 260784);