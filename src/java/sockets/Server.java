/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sockets;

/**
 *
 * @author Andrew
 */
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import models.*;
import utilities.DataGenerator;

public class Server implements Runnable{

    public static void communicate() {
        Socket socket = null;
        ObjectOutputStream oos = null;

        try {
            socket = new Socket("localhost", 4445);
            System.out.println("Server connected: " + socket.toString());
            oos = new ObjectOutputStream(socket.getOutputStream());
            DataGenerator dataGenerator = new DataGenerator();
            Facility facility = new Facility();
            facility.setAmbientTemperature(dataGenerator.randomAmbientTemp());
            facility.setBackOfPanelTemperature1(dataGenerator.randomTemp());
            facility.setBackOfPanelTemperature2(dataGenerator.randomTemp());
            facility.setRecordID(dataGenerator.recordID());
            facility.setTimeStampId(dataGenerator.timeStampId());
            facility.setTimeStamp(dataGenerator.timeStamp());
            facility.setWindSpeed(dataGenerator.randomWindSpeed());
            facility.setSolarirridianceGHI(dataGenerator.randomGHI());
            facility.setSolarirridiancePOA(dataGenerator.randomPOA());

            facility = new Facility(facility.getRecordID(), facility.getTimeStampId(), facility.getTimeStamp(), facility.getSolarirridiancePOA(), facility.getSolarirridianceGHI(), facility.getBackOfPanelTemperature1(), facility.getAmbientTemperature(), facility.getBackOfPanelTemperature2(), facility.getWindSpeed());
            oos.writeObject(facility);
            
            socket.close();
            oos.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        Server.communicate();
    }
}
