DELETE FROM user_type WHERE type_id <= 2;

INSERT INTO user_type VALUES( 1, 1, "Facility Operator" );
INSERT INTO user_type VALUES( 2, 2, "Facility Manager" );

DELETE FROM user_details WHERE email = "facility_manager@localhost";
DELETE FROM user_details WHERE email = "facility_operator@localhost";
DELETE FROM user_details WHERE email = "admin";

INSERT INTO user_details VALUES( "facility_manager@localhost", 2, "Facility", "Manager", "password" );
INSERT INTO user_details VALUES( "facility_operator@localhost", 1, "Facility", "Operator", "password" );
INSERT INTO user_details VALUES( "admin", 2, "Facility", "Manager", "password" );