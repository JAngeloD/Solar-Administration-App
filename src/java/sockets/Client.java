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
import models.TransferDatabase;

public class Client implements Runnable{
    public static void communicate() {
        ServerSocket serverSocket;
        Socket socket = null;
        ObjectInputStream ois = null;

        try {
            serverSocket = new ServerSocket(4445);
            socket = serverSocket.accept();
            
            System.out.println("Client connected: " + socket.toString());
            ois = new ObjectInputStream(socket.getInputStream());
            
            TransferDatabase obj = (TransferDatabase) ois.readObject();
            
            //Grabs the object sent from the server and pushes into the database
            obj.PutIntoDatabase();
            
            socket.close();
            serverSocket.close();
            ois.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        Client.communicate();
    }
}
