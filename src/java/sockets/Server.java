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
            System.out.println("connected");
            isConnected = true;
            oos = new ObjectOutputStream(socket.getOutputStream());
            DataGenerator dataGenerator = new DataGenerator();
            Facility facility = new Facility();
            PCC pcc = new PCC();
            Inverter inverter = new Inverter();
            Feeder feeder = new Feeder();
            inverter = dataGenerator.randomInverter();
            pcc = dataGenerator.randomPCC();
            facility = dataGenerator.randomDataFacility();
            feeder = dataGenerator.randomFeeder();
            System.out.println("object to be written = " + facility);
            System.out.println("object to be written = " + pcc);
            System.out.println("object to be written = " + inverter);
            System.out.println("object to be written = " + feeder);
            oos.writeObject(facility);
            oos.writeObject(pcc);
            oos.writeObject(inverter);
            oos.writeObject(feeder);
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
