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
    private static final DecimalFormat df = new DecimalFormat("0.00");
    private String recordID = "100000000";
    private Integer timeStampID = 4193;
    private SimpleDateFormat formatter = new SimpleDateFormat("yyyy-mm-dd HH:mm:ss");
    private Date timeStamp = new Date(System.currentTimeMillis());

    public Client() {

    }

    public void communicate() {
        try {
            socket = new Socket("localhost", 4445);
            System.out.println("connected");
            isConnected = true;
            oos = new ObjectOutputStream(socket.getOutputStream());
            Facility facility = new Facility();
            facility.setRecordID(recordID);
            facility.setTimeStampId(timeStampID);
            facility.setTimeStamp(timeStamp);
            facility.setSolarirridiancePOA(new Random().nextDouble() * (1071 - -5) + -5);
            facility.setSolarirridianceGHI(new Random().nextDouble() * (3248));
            facility.setBackOfPanelTemperature1(new Random().nextDouble() * (39.3 - -13.6) + -13.6);
            facility.setBackOfPanelTemperature2(new Random().nextDouble() * (30.7 - -10.9) + -10.9);
            facility.setAmbientTemperature(new Random().nextDouble() * (39.5 - -15.3) + -15.3);
            facility.setWindSpeed(new Random().nextDouble() * (10.3));
            facility = new Facility(facility.getRecordID(), facility.getTimeStampId(), facility.getTimeStamp(), facility.getSolarirridiancePOA(), facility.getSolarirridianceGHI(), facility.getBackOfPanelTemperature1(), facility.getAmbientTemperature(), facility.getBackOfPanelTemperature2(), facility.getWindSpeed());
            TestObject testObject = new TestObject(1, "test");
            System.out.println("object to be written = " + facility);
            oos.writeObject(testObject);
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
