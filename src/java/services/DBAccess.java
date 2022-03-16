/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import dbutil.*;
import java.lang.reflect.Method;
import java.sql.SQLException;
import models.*;
import java.sql.Timestamp;
import java.util.Date;
import java.time.Instant;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.EntityManager;

/**
 *
 * @author 856622
 */
public class DBAccess {

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

    public static void PccInsert() {

    }

    public static void PccUpdate() {

    }

    public static void PccDelete() {

    }

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

    public static void FeederInsert() {

    }

    public static void FeederUpdate() {

    }

    public static void FeederDelete() {

    }

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
            e.printStackTrace();
        }

        return data;
    }

    public static void InverterInsert() {

    }

    public static void InverterUpdate() {

    }

    public static void InverterDelete() {

    }

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

    public static List<FacilityLogs> FacilityGetAll(int logId) {
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

    public List<FacilityLogs> getAll(String logId) throws Exception {
        FacilityLogsDB logDB = new FacilityLogsDB();
        List<FacilityLogs> logs = logDB.getAll(logId);
        return logs;
    }

    // maybe accept a Log object then get the attribute that isnt null so we can pass
    // email, or timestamp, or whatever
    //    public static FacilityLogs FacilityGetLog(Integer logId, String logType, Date timeStamp) {
    //        throw new UnsupportedOperationException("Not supported yet.");
    //        
    //        FacilityLogsDB facilitydb = new FacilityLogsDB();
    //        FacilityLogs log = facilitydb.get(logId);
    //        
    //        return log;
    //
    //    }
    public static FacilityLogs FacilityGetLog(String logId, String logType, Date timeStamp) {
        throw new UnsupportedOperationException("Not supported yet.");

        FacilityLogsDB facilitydb = new FacilityLogsDB( logId,  logType, timeStamp);
        FacilityLogs log = facilitydb.get(logId);

        return log;

    }

    public static Users UsersGet(String email) {
        UsersDB db = new UsersDB();
        Users user = db.get(email);

        return user;
    }

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

        Timestamp ts = new Timestamp(System.currentTimeMillis());
        Date date = new Date(ts.getTime());

        log.setTimeStamp(date);
        log.setTimeStampId((int) Instant.now().getEpochSecond());

        try {
            db.insert(log);
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
    }

    public static void FacilityUpdate() {

    }

    public static void FacilityDelete() {

    }

}
