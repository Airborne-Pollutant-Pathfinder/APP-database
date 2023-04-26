-- Add new source_id column as VARCHAR(50)
ALTER TABLE sensor ADD COLUMN new_source_id VARCHAR(50) NOT NULL DEFAULT '0';

-- Copy existing source_id values to new column as strings
UPDATE sensor SET new_source_id = CAST(source_id AS CHAR(50));

-- Drop the old source_id column
ALTER TABLE sensor DROP COLUMN source_id;

-- Rename the new_source_id column to source_id
ALTER TABLE sensor CHANGE new_source_id source_id VARCHAR(50) NOT NULL DEFAULT '0';
