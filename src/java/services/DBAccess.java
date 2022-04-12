/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import dbutil.*;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.sql.SQLException;
import java.util.HashMap;
import models.*;
import java.util.List;
import java.util.UUID;
import javax.persistence.EntityManager;
import utilities.TimeFactory;

/**
 * All database transactions for all models are in here. Mostly used for reflection purposes.
 *
 * @author Angelo De Vera, Haz W, Mujtaba Medhi, Therin Mody
 */
public class DBAccess {

    /**
     * Returns a value of a record given an attribute and a timestamp (Long)
     *
     * @param attribute - attribute of the model
     * @param timestamp - UNIX timestamp
     * @return - value of record
     */
    public static double PccGet(String attribute, String timestamp) {

        //Initializes the database and retrieves the data based on the parameters given
        PccDB db = new PccDB();
        PCC record = db.get(timestamp);

        //Goes through the assoicated model and invokes the correct getter method
        double data = 0;
        try {
            Method[] models = record.getClass().getDeclaredMethods();
            for (Method m : models) {
                if (m.getName().equals("get" + attribute)) {
                    data = (double) m.invoke(record);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;
    }

    /**
     * Retrieves the most recent PCC record pushed into the database
     *
     * @param attribute - attribute of the model
     * @return - value of record
     */
    public static double PccGetRecent(String attribute) {

        //Initializes the database and retrieves the data based on the parameters given
        PccDB db = new PccDB();
        PCC record = db.getRecent();

        //Goes through the assoicated model and invokes the correct getter method
        double data = 0;
        try {
            Method[] models = record.getClass().getDeclaredMethods();
            for (Method m : models) {
                if (m.getName().equals("get" + attribute)) {
                    data = (double) m.invoke(record);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;

    }

    /**
     * Inserts a PCC object into the database
     *
     * @param newPCC - new PCC object
     * @throws SQLException - SQLException
     */
    public static void PccInsert(PCC newPCC) throws SQLException {
        PccDB pccDB = new PccDB();
        pccDB.insert(newPCC);
    }

    /**
     * Retrieves the value of feeder in the database
     *
     * @param attributeRaw - attribute of the model
     * @param timestamp - UNIX timestamp
     * @return - Retrieves value of the requested attribute and timestamp in the database
     */
    public static double FeederGet(String attributeRaw, String timestamp) {
        //Refactor later (Works, it just hurts looking at it)
        String attribute = attributeRaw;
        String deviceID = "";
        if (attribute.substring(attribute.length() - 1).matches("[0-9]+")) {
            deviceID = attribute.substring(attribute.length() - 2);
            attribute = attribute.substring(0, attribute.length() - 2);

            if (deviceID.substring(0, deviceID.length() - 1).equals("0")) {
                deviceID = deviceID.substring(1);
            }
        }

        //Initializes the database and retrieves the data based on the parameters given
        FeederDB db = new FeederDB();
        Feeder record = db.get(timestamp, deviceID);

        //Goes through the assoicated model and invokes the correct getter method
        double data = 0;
        try {
            Method[] models = record.getClass().getDeclaredMethods();
            for (Method m : models) {
                if (m.getName().equals("get" + attribute)) {
                    data = Double.valueOf(m.invoke(record).toString());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;
    }

    /**
     * Retrieves the most recent Feeder record pushed into the database
     *
     * @param attributeRaw - attribute of the model
     * @return - value of record
     */
    public static double FeederGetRecent(String attributeRaw) {
        //Refactor later (Works, it just hurts looking at it)
        String attribute = attributeRaw;
        String deviceID = "";
        if (attribute.substring(attribute.length() - 1).matches("[0-9]+")) {
            deviceID = attribute.substring(attribute.length() - 2);
            attribute = attribute.substring(0, attribute.length() - 2);

            if (deviceID.substring(0, deviceID.length() - 1).equals("0")) {
                deviceID = deviceID.substring(1);
            }
        }

        //Initializes the database and retrieves the data based on the parameters given
        FeederDB db = new FeederDB();
        Feeder record = db.getRecent(deviceID);

        if (record == null) {
            System.out.println("TEST");
        }

        //Goes through the assoicated model and invokes the correct getter method
        double data = 0;
        try {
            Method[] models = record.getClass().getDeclaredMethods();
            for (Method m : models) {
                if (m.getName().equals("get" + attribute)) {
                    data = Double.valueOf(m.invoke(record).toString());
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;
    }

    /**
     * Pushes a new feeder object into the database
     *
     * @param newFeeder - new feeder object
     * @throws SQLException - SQLException
     */
    public static void FeederInsert(Feeder newFeeder) throws SQLException {
        FeederDB feederDB = new FeederDB();
        feederDB.insert(newFeeder);
    }

    /**
     * Retrieves a value from a inverter in the database given a timestamp and an attribute
     *
     * @param attributeRaw - requested attribute of the model
     * @param timestamp - UNIX timestamp
     * @return - value of the attribute of the model found in the database.
     */
    public static Double InverterGet(String attributeRaw, String timestamp) {
        //Refactor later (Works, it just hurts looking at it)
        String attribute = attributeRaw;
        String deviceID = "";
        if (attribute.substring(attribute.length() - 1).matches("[0-9]+")) {
            deviceID = attribute.substring(attribute.length() - 2);
            attribute = attribute.substring(0, attribute.length() - 2);
            if (deviceID.substring(0, deviceID.length() - 1).equals("0")) {
                deviceID = deviceID.substring(1);
            }
        }

        //Initializes the database and retrieves the data based on the parameters given
        InverterDB db = new InverterDB();
        Inverter record = db.get(timestamp, deviceID);

        //Goes through the assoicated model and invokes the correct getter method
        double data = 0;
        try {
            Method[] models = record.getClass().getDeclaredMethods();
            for (Method m : models) {
                if (m.getName().equals("get" + attribute)) {
                    data = Double.valueOf(m.invoke(record).toString());
                }
            }
        } catch (Exception e) {
        }

        return data;
    }

    /**
     * Retrieves the most current inverter in the database
     *
     * @param attributeRaw - attribute of the model
     * @return - value of the attribute of the record found in the database.
     */
    public static double InverterGetRecent(String attributeRaw) {
        //Refactor later (Works, it just hurts looking at it)
        String attribute = attributeRaw;
        String deviceID = "";
        if (attribute.substring(attribute.length() - 1).matches("[0-9]+")) {
            deviceID = attribute.substring(attribute.length() - 2);
            attribute = attribute.substring(0, attribute.length() - 2);
            if (deviceID.substring(0, deviceID.length() - 1).equals("0")) {
                deviceID = deviceID.substring(1);
            }
        }

        //Initializes the database and retrieves the data based on the parameters given
        InverterDB db = new InverterDB();
        Inverter record = db.getRecent(deviceID);

        //Goes through the assoicated model and invokes the correct getter method
        double data = 0;
        try {
            Method[] models = record.getClass().getDeclaredMethods();
            for (Method m : models) {
                if (m.getName().equals("get" + attribute)) {
                    data = Double.valueOf(m.invoke(record).toString());
                }
            }
        } catch (Exception e) {
        }

        return data;
    }

    /**
     * Pushes a new inverter into the database
     *
     * @param newInverter - new inverter object
     * @throws SQLException - SQLException
     */
    public static void InverterInsert(Inverter newInverter) throws SQLException {
        InverterDB inverterDB = new InverterDB();
        inverterDB.insert(newInverter);
    }

    /**
     * Retrieves a value from a Facility in the database given a timestamp and an attribute
     *
     * @param attribute - requested attribute of the model
     * @param timestamp - UNIX timestamp
     * @return - value of the attribute of the model found in the database.
     */
    public static Double FacilityGet(String attribute, String timestamp) {

        //Initializes the database and retrieves the data based on the parameters given
        FacilityDB db = new FacilityDB();
        Facility record = db.get(timestamp);

        //Goes through the assoicated model and invokes the correct getter method
        double data = 0;
        try {
            Method[] models = record.getClass().getDeclaredMethods();
            for (Method m : models) {
                if (m.getName().equals("get" + attribute)) {
                    data = (double) m.invoke(record);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;
    }

    /**
     * Retrieves the most current Facility record in the database
     *
     * @param attribute - attribute of the model
     * @return - value of the attribute of the record found in the database.
     */
    public static Double FacilityGetRecent(String attribute) {
        //Initializes the database and retrieves the data based on the parameters given
        FacilityDB db = new FacilityDB();
        Facility record = db.getRecent();

        //Goes through the assoicated model and invokes the correct getter method
        double data = 0;
        try {
            Method[] models = record.getClass().getDeclaredMethods();
            for (Method m : models) {
                if (m.getName().equals("get" + attribute)) {
                    data = (double) m.invoke(record);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return data;
    }

    /**
     * Retrieves all facility logs
     * 
     * @return - List of facility logs
     */
    public static List<FacilityLogs> FacilityGetAll() {
        EntityManager em = DBUtil.getEmFactory().createEntityManager();

        try {
            FacilityLogsDB db = new FacilityLogsDB();
            return db.getAll();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            em.close();
        }

        return null;
    }

    /**
     * Returns all facility logs under a certain logID
     * 
     * @param logId - log type in the form of it's ID
     * @return list of Facility Logs
     */
    public List<FacilityLogs> getAll(String logId) {
        FacilityLogsDB logDB = new FacilityLogsDB();
        List<FacilityLogs> logs = logDB.getAll(logId);
        return logs;
    }

    /**
     * Returns a facility log given a logID
     * 
     * @param logId - logID of the facility log
     * @return - a FacilityLogs object
     */
    public static FacilityLogs FacilityGetLog(int logId) {
        FacilityLogsDB facilitydb = new FacilityLogsDB();
        FacilityLogs log = facilitydb.get(logId);
        return log;
    }

    /**
     * Uses a UserDB object to access the database and retrieve a user with the matching email
     *
     * @param email a string representing an email
     * @return a user with matching email
     */
    public static Users UsersGet(String email) {
        UsersDB db = new UsersDB();
        Users user = db.get(email);

        return user;
    }

    /**
     * Users a UserDB object to retrieve a list of all users
     *
     * @return a List collection of all users
     */
    public static List<Users> getUsers() {
        UsersDB db = new UsersDB();
        List<Users> users = null;
        try {
            users = db.getAll();
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return users;
    }

    /**
     * Creates a new user with the received parameters and uses a UserDB object to update the user's information in the database
     *
     * @param email a string representing the user's email
     * @param typeID an integer representing the user's type id
     * @param active an integer value representing the user's status
     * @param fname a string representing the user's first name
     * @param lname a string representing the user's last name
     * @param pass a string representing the user's password
     */
    public static void updateUser(String email, int typeID, int active, String fname, String lname, String pass) {
        UsersDB db = new UsersDB();
        try {
            Users user = new Users();
            user.setEmail(email);
            UserTypeDB utdb = new UserTypeDB();
            UserType ut = utdb.get(typeID);
            user.setTypeId(ut);
            if (active == 1) {
                user.setActive(Boolean.TRUE);
            } else if (active == 0) {
                user.setActive(Boolean.FALSE);
            }
            user.setFirstName(fname);
            user.setLastName(lname);
            user.setPassword(pass);
            db.update(user);
        } catch (Exception e) {
            System.out.println(e.toString());
        }
    }

    /**
     * Creates a new user with the received parameters and uses a UserDB object to insert the new user's information in the database
     *
     * @param email a string representing the user's email
     * @param typeID an integer representing the user's type id
     * @param active an integer value representing the user's status
     * @param fname a string representing the user's first name
     * @param lname a string representing the user's last name
     * @param pass a string representing the user's password
     */
    public static void insertUser(String email, int typeID, int active, String fname, String lname, String pass) {
        UsersDB db = new UsersDB();
        try {
            Users user = new Users();
            user.setEmail(email);
            UserTypeDB utdb = new UserTypeDB();
            UserType ut = utdb.get(typeID);
            user.setTypeId(ut);
            if (active == 1) {
                user.setActive(Boolean.TRUE);
            } else if (active == 0) {
                user.setActive(Boolean.FALSE);
            }
            user.setFirstName(fname);
            user.setLastName(lname);
            user.setPassword(pass);
            db.insert(user);
        } catch (Exception e) {
            System.out.println(e.toString());
        }
    }

    /**
     * Send an email to the user's email with a link to reset password
     *
     * @param email represents the user's email
     * @param path represents the path to the location of the email templates folder
     * @param url represents the url that will be used to create the link that the user will use to reset password
     * @return true if the email to reset password was sent successfully
     */
    public boolean resetPassword(String email, String path, String url) {
        UsersDB udb = new UsersDB();
        try {
            Users user = udb.get(email);
            if (user != null) {
                String uuid = UUID.randomUUID().toString();
                user.setResetPasswordUuid(uuid);
                udb.update(user);

                String to = email;
                String subject = "Reset password";
                String template = path + "/emailtemplates/resetPassword.html";
                String link = url + "?uuid=" + uuid;

                HashMap<String, String> tags = new HashMap<>();
                tags.put("firstname", user.getFirstName());
                tags.put("lastname", user.getLastName());
                tags.put("link", link);

                GmailService.sendMail(to, subject, template, tags);
                return true;
            }
        } catch (Exception e) {
            return false;
        }
        return false;
    }

    /**
     * method that sets the new password if the uuid matches the one for the user
     *
     * @param uuid a string representing a unique id
     * @param password a string representing the new password
     * @return - boolean, true if the password has changed, false otherwise
     */
    public boolean changePassword(String uuid, String password) {
        UsersDB udb = new UsersDB();
        System.out.println("Change password in as");
        try {
            Users user = udb.getByUUID(uuid);
            System.out.println(user.getFirstName());
            user.setPassword(password);
            user.setResetPasswordUuid(null);
            udb.update(user);
            return true;
        } catch (Exception e) {
            return false;
        }

    }

    /**
     * Pushes a new facility object to the database
     * 
     * @param email - author of the log
     * @param logType - the type of log as an int
     * @param logText - content of the log
     */
    public static void FacilityInsert(String email, int logType, String logText) {
        FacilityLogsDB db = new FacilityLogsDB();
        FacilityLogs log = new FacilityLogs();

        Users user = UsersGet(email);
        if (user == null) {
            return;
        }

        log.setEmail(user);
        log.setLogType(logType);
        log.setLogText(logText);

        log.setTimeStamp(TimeFactory.getCurrentTimestamp());
        log.setTimeStampId(BigInteger.valueOf(TimeFactory.convertToID(TimeFactory.getCurrentTimestamp())));

        try {
            db.insert(log);
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
    }

    /**
     * Inserts a new facility record into the database
     * 
     * @param newFacility - new facility object
     * @throws SQLException - SQLEXception
     */
    public static void FacilityInsertDatabase(Facility newFacility) throws SQLException {
        FacilityDB facilitydb = new FacilityDB();
        facilitydb.insert(newFacility);
    }

    /**
     * Inserts a new facility log into a database using an object
     * 
     * @param newLogs - new FacilityLog object
     * @throws SQLException - SQLException
     */
    public static void FacilityLogsInsert(FacilityLogs newLogs) throws SQLException {
        FacilityLogsDB facilitylogsdb = new FacilityLogsDB();
        facilitylogsdb.insert(newLogs);
    }

}
