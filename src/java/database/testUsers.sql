DELETE FROM user_type WHERE type_id <= 2;

INSERT INTO user_type VALUES( 1, 1, "Facility Operator" );
INSERT INTO user_type VALUES( 2, 2, "Facility Manager" );

DELETE FROM users WHERE email = "facility_manager@localhost";
DELETE FROM users WHERE email = "facility_operator@localhost";
DELETE FROM users WHERE email = "admin";

INSERT INTO users VALUES( "facility_manager@localhost", 2, "Facility", "Manager", "password" );
INSERT INTO users VALUES( "facility_operator@localhost", 1, "Facility", "Operator", "password" );
INSERT INTO users VALUES( "admin", 2, "Facility", "Manager", "password" );