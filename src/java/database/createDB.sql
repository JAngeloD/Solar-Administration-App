-- Dropping for testing purposes, schema won't be dropped in final DB.
DROP SCHEMA IF EXISTS `solarpowerdb`;

CREATE SCHEMA IF NOT EXISTS `solarpowerdb` DEFAULT CHARACTER SET latin1;
USE `solarpowerdb`;

--timestamp - PK - int - size 4 for hrs + mins, size 6 for hrs + mins + secs
--date_time - datetime
--attribute_name - int ?? -- changed to description - varchar 
CREATE TABLE IF NOT EXISTS timestamp_desc (
    time_stamp INT PRIMARY KEY,
    date_time DATETIME DEFAULT CURRENT_TIMESTAMP,
    description VARCHAR(500) 
) ENGINE = INNODB;

-- type of user - PK - int
-- access level - int
-- type_name - varchar
CREATE TABLE IF NOT EXISTS user_type (
    type_of_user INT PRIMARY KEY,
    access_level INT,
    type_name VARCHAR(20)
) ENGINE = INNODB;


CREATE TABLE IF NOT EXISTS user_details (
    email VARCHAR(100) PRIMARY KEY,
    type_of_user INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    password VARCHAR(50),
    CONSTRAINT fk_user_type
    FOREIGN KEY (type_of_user)
        REFERENCES user_type(type_of_user)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS facility_user (
    email VARCHAR(100) PRIMARY KEY,
    full_name VARCHAR(100),
    CONSTRAINT fk_email
    FOREIGN KEY (email)
        REFERENCES user_details(email)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS facility_logs (
    log_code INT PRIMARY KEY,
    log_text VARCHAR(500),
    created_by VARCHAR(100),
    time_stamp INT,
    CONSTRAINT fk_timestamp_desc_logs
    FOREIGN KEY (time_stamp)
        REFERENCES timestamp_desc(time_stamp)
) ENGINE = INNODB;

-- Need clarification here!

CREATE TABLE IF NOT EXISTS breakers (
    breaker_code INT PRIMARY KEY,
    breaker_name VARCHAR(100),
    breaker_status VARCHAR(3),
    time_stamp INT,
    CONSTRAINT fk_timestamp_desc_breakers
    FOREIGN KEY (time_stamp)
        REFERENCES timestamp_desc(time_stamp)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS eaton (
    title VARCHAR(3) PRIMARY KEY
    -- Why is timestamp PK?
    -- What is title from (PCC or Feeder?) and why is it a FK
    /* 
    time_stamp INT,
    title_from VARCHAR(8)
    IF time_stamp is FK:
    CONSTRAINT fk_timestamp_desc_eaton
    FOREIGN KEY (time_stamp)
        REFERENCES timestamp_desc(time_stamp)
    */
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS pcc (
    component VARCHAR(50) PRIMARY KEY,
    ac_output_energy DOUBLE,
    ac_output_real_power DOUBLE,
    ac_output_apparent_power DOUBLE,
    ac_output_reactive_power DOUBLE,
    ac_output_power_factor DOUBLE,
    ac_output_phase_a_current DOUBLE,
    ac_output_phase_b_current DOUBLE,
    ac_output_phase_c_current DOUBLE,
    ac_output_phase_ab_voltage DOUBLE,
    ac_output_phase_bc_voltage DOUBLE,
    ac_output_phase_ca_voltage DOUBLE
    -- Why is timestamp PK?
    -- Why is title a FK?
    /*
    time_stamp INT,
    title_from VARCHAR(9)
    IF time_stamp is FK:
    CONSTRAINT fk_timestamp_desc_pcc
    FOREIGN KEY (time_stamp)
        REFERENCES timestamp_desc(time_stamp)
    */
) ENGINE = INNODB;


-- Same issue as PCC
CREATE TABLE IF NOT EXISTS feeder (
    component VARCHAR(50) PRIMARY KEY,
    ac_output_real_power DOUBLE,
    ac_output_apparent_power DOUBLE,
    ac_output_reactive_power DOUBLE,
    ac_output_power_factor DOUBLE,
    ac_output_phase_a_current DOUBLE,
    ac_output_phase_b_current DOUBLE,
    ac_output_phase_c_current DOUBLE,
    ac_output_phase_ab_voltage DOUBLE,
    ac_output_phase_bc_voltage DOUBLE,
    ac_output_phase_ca_voltage DOUBLE
    -- Why is timestamp PK?
    -- Why is title a FK?
    /*
    time_stamp INT,
    title_from VARCHAR(9)
    IF time_stamp is FK:
    CONSTRAINT fk_timestamp_desc_feeder
    FOREIGN KEY (time_stamp)
        REFERENCES timestamp_desc(time_stamp)
    */
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS alarms (
    alarm_code INT PRIMARY KEY,
    alarm_name VARCHAR(100),
    alarm_status VARCHAR(4),
    time_stamp INT,
    CONSTRAINT fk_timestamp_desc_alarms
    FOREIGN KEY (time_stamp)
        REFERENCES timestamp_desc(time_stamp)
) ENGINE = INNODB;

-- Cachelan, Facility, and Inverter suffer from the same issues

CREATE TABLE IF NOT EXISTS cachelan (
    title VARCHAR(100) PRIMARY KEY
    -- Why is timestamp PK?
    -- Where is title_form coming from?
    /*
    time_stamp INT,
    title_from VARCHAR(8)
    IF time_stamp is FK:
    CONSTRAINT fk_timestamp_desc_cachelan
    FOREIGN KEY (time_stamp)
        REFERENCES timestamp_desc(time_stamp)
    */
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS facility (
    component VARCHAR(50) PRIMARY KEY,
    solar_irridiance_POA DOUBLE,
    solar_irridiance_GHI DOUBLE,
    back_of_panel_temperature_1 DOUBLE,
    ambient_temperature DOUBLE,
    back_of_panel_temperature_2 DOUBLE,
    wind_speed DOUBLE
    -- Why is timestamp PK?
    -- Why is title a FK?
    /*
    time_stamp INT,
    title_from VARCHAR(9)
    IF time_stamp is FK:
    CONSTRAINT fk_timestamp_desc_facility
    FOREIGN KEY (time_stamp)
        REFERENCES timestamp_desc(time_stamp)
    */
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS inverter (
    component VARCHAR(50) PRIMARY KEY,
    ac_output_energy DOUBLE,
    ac_output_real_power DOUBLE,
    ac_output_apparent_power DOUBLE,
    ac_output_reactive_power DOUBLE,
    ac_output_power_factor DOUBLE,
    ac_output_phase_a_current DOUBLE,
    ac_output_phase_b_current DOUBLE,
    ac_output_phase_c_current DOUBLE,
    ac_output_phase_ab_voltage DOUBLE,
    ac_output_phase_bc_voltage DOUBLE,
    ac_output_phase_ca_voltage DOUBLE,
    dc_real_power DOUBLE,
    dc_volt DOUBLE,
    dc_current DOUBLE,
    efficiency DOUBLE
    -- Why is timestamp PK?
    -- Why is title a FK?
    /*
    time_stamp INT,
    title_from VARCHAR(9)
    IF time_stamp is FK:
    CONSTRAINT fk_timestamp_desc_inverter
    FOREIGN KEY (time_stamp)
        REFERENCES timestamp_desc(time_stamp)
    */
) ENGINE = INNODB;