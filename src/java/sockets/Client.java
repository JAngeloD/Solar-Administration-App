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
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import models.*;
import utilities.DataGenerator;
import java.net.SocketException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class Client {

    private Socket socket = null;
    private ObjectInputStream ois = null;
    private ObjectOutputStream oos = null;
    private boolean isConnected = false;

    public Client() {

    }

    public void communicate() {
        try {
            socket = new Socket("localhost", 4445);
            System.out.println("connected");
            isConnected = true;
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
            System.out.println("object to be written = " + facility);
            oos.writeObject(facility);
            socket.close();
        } catch (SocketException se) {
            se.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Client client = new Client();
        client.communicate();
    }
}
