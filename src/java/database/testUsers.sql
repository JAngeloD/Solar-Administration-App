DELETE FROM `solarpowerdb`.`user_type` WHERE type_id <= 2;

INSERT INTO `solarpowerdb`.`user_type` VALUES( 1, 1, "Facility Operator" );
INSERT INTO `solarpowerdb`.`user_type` VALUES( 2, 2, "Facility Manager" );
INSERT INTO `solarpowerdb`.`user_type` VALUES( 3, 3, "Maintenance" );

DELETE FROM `solarpowerdb`.`users` WHERE email = "facility_manager@localhost";
DELETE FROM `solarpowerdb`.`users` WHERE email = "facility_operator@localhost";
DELETE FROM `solarpowerdb`.`users` WHERE email = "admin";

INSERT INTO `solarpowerdb`.`users` VALUES( "facility_manager@localhost", 2, "Facility", "Manager", "5f4dcc3b5aa765d61d8327deb882cf99", 1, "");
INSERT INTO `solarpowerdb`.`users` VALUES( "facility_operator@localhost", 1, "Facility", "Operator", "5f4dcc3b5aa765d61d8327deb882cf99", 1, "");
INSERT INTO `solarpowerdb`.`users` VALUES( "admin", 2, "Facility", "Manager", "5f4dcc3b5aa765d61d8327deb882cf99", 1, "");