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

public class Server {

    private ServerSocket serverSocket = null;
    private Socket socket = null;
    private ObjectInputStream ois = null;

    public Server() {

    }

    public void communicate() {
        try {
            serverSocket = new ServerSocket(4445);
            socket = serverSocket.accept();
            System.out.println("connected");
            ois = new ObjectInputStream(socket.getInputStream());
            Facility facility = (Facility) ois.readObject();
            System.out.println("Object receieved = " + facility);
            socket.close();

        } catch (SocketException se) {
            se.printStackTrace();
            System.exit(0);
            
        } catch (IOException | ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        Server server = new Server();
        server.communicate();
    }
}
