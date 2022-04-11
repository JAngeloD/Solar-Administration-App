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

public class Client implements Runnable{

    public static void communicate() {
        Socket socket = null;
        ObjectOutputStream oos = null;

        try {
            socket = new Socket("localhost", 4445);
            System.out.println("Server connected: " + socket.toString());
            oos = new ObjectOutputStream(socket.getOutputStream());
            
            DataGenerator dataGenerator = new DataGenerator();
            
            //Objects being pushed into the database
            

//            oos.writeObject(facility);
            
            socket.close();
            oos.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        Client.communicate();
    }
}
