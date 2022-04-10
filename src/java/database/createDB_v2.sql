-- Dropping for testing purposes, schema won't be dropped in final DB.
DROP SCHEMA IF EXISTS `solarpowerdb`;

CREATE SCHEMA IF NOT EXISTS `solarpowerdb` DEFAULT CHARACTER SET latin1;
USE `solarpowerdb`;

-- type of user - PK - int
-- access level - int
-- type_name - varchar
CREATE TABLE IF NOT EXISTS user_type (
    type_id INT PRIMARY KEY,
    access_level INT,
    type_name VARCHAR(20)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS users (
    email VARCHAR(100) PRIMARY KEY,
    type_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    password VARCHAR(50),
    active BIT,
    reset_password_uuid VARCHAR(50),
    CONSTRAINT fk_type_id
    FOREIGN KEY (type_id)
        REFERENCES user_type(type_id)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS facility_logs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(100), 
    log_text VARCHAR(500),
    log_type INT,
    time_stamp_id LONG,
    time_stamp TIMESTAMP,
    CONSTRAINT fk_email_author
    FOREIGN KEY (email)
        REFERENCES users(email)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS pcc (
    recordID VARCHAR(50) PRIMARY KEY,
    time_stamp_id LONG,
    time_stamp TIMESTAMP,
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
) ENGINE = INNODB;


-- Same issue as PCC
CREATE TABLE IF NOT EXISTS feeder (
    recordID VARCHAR(50) PRIMARY KEY,
    time_stamp_id LONG,
    time_stamp TIMESTAMP,
    device_id INT,
    breaker_status BIT,
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
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS facility (
    recordID VARCHAR(50) PRIMARY KEY,
    time_stamp_id LONG,
    time_stamp TIMESTAMP,
    solar_irridiance_POA DOUBLE,
    solar_irridiance_GHI DOUBLE,
    back_of_panel_temperature_1 DOUBLE,
    ambient_temperature DOUBLE,
    back_of_panel_temperature_2 DOUBLE,
    wind_speed DOUBLE
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS inverter (
    recordID VARCHAR(50) PRIMARY KEY,
    time_stamp_id LONG,
    time_stamp TIMESTAMP,
    device_id INT,
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
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS alarm_info (
    alarm_id INT PRIMARY KEY,
    alarm_desc VARCHAR(100),
    alarm_status VARCHAR(4),
    device  VARCHAR(20)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS alarm_events (
    event_id INT PRIMARY KEY,
    alarm_id INT,
    time_stamp_id LONG,
    time_stamp TIMESTAMP,
    CONSTRAINT fk_alarm_id
    FOREIGN KEY (alarm_id)
        REFERENCES alarm_info(alarm_id)
) ENGINE = INNODB;

