/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sockets;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/**
 *
 * @author 856622
 */
public class RetrievalSim {

    public static void main(String[] args) {
        ScheduledExecutorService executor = Executors.newScheduledThreadPool(2);
        Client client = new Client();
        Server server = new Server();

        ScheduledFuture<?> result1 = executor.scheduleAtFixedRate(client, 0, 13, TimeUnit.SECONDS);
        ScheduledFuture<?> result2 = executor.scheduleAtFixedRate(server, 3, 13, TimeUnit.SECONDS);

        try {
            TimeUnit.MILLISECONDS.sleep(120000); //2 mins
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

        executor.shutdown();
    }
}
