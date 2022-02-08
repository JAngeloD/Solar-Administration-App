-- Dropping for testing purposes, schema won't be dropped in final DB.
DROP SCHEMA IF EXISTS 'solarpowerdb';

CREATE SCHEMA IF NOT EXISTS 'solarpowerdb' DEFAULT CHARACTER SET latin1;
USE 'solarpowerdb';

--timestamp - PK - int - size 4 for hrs + mins, size 6 for hrs + mins + secs
--date_time - datetime
--attribute_name - int ?? -- changed to description - varchar 
CREATE TABLE IF NOT EXISTS timestamp_desc (
    time_stamp INT PRIMARY KEY,
    date_time DATETIME CURRENT_TIMESTAMP,
    description VARCHAR(500) 
) ENGINE = INNODB;

