/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import dbutil.*;
import java.lang.reflect.Method;
import models.*;

/**
 *
 * @author 856622
 */
public class DBAccess {

    public static double PccGet(String attribute, String timestamp) {

        //Initializes the database and retrieves the data based on the parameters given
        PccDB db = new PccDB();
        Pcc record = db.get(timestamp);

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
                    data = (double) m.invoke(record);
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
}
