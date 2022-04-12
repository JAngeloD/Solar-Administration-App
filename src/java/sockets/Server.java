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
import java.io.*;
import java.net.*;
import models.Facility;
import models.Feeder;
import models.Inverter;
import models.PCC;
import models.TransferDatabase;

public class Server implements Runnable{
    public static void communicate() {
        ServerSocket serverSocket;
        Socket socket = null;
        ObjectInputStream ois = null;

        try {
            serverSocket = new ServerSocket(4445);
            socket = serverSocket.accept();
            
            System.out.println("Client connected: " + socket.toString());
            ois = new ObjectInputStream(socket.getInputStream());
            
//            TransferDatabase obj = (TransferDatabase) ois.readObject();
            
            Facility facility = (Facility) ois.readObject();
            PCC pcc = (PCC) ois.readObject();
            Inverter inverter = (Inverter) ois.readObject();
            Feeder feeder = (Feeder) ois.readObject();
            System.out.println("Object receieved = " + feeder);
            System.out.println("Object receieved = " + facility);
            System.out.println("Object recieved = " + pcc);
            System.out.println("Object recieved = " + (inverter));
            
            facility.PutIntoDatabase();
            
            socket.close();
            serverSocket.close();
            ois.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        Server.communicate();
    }
}
