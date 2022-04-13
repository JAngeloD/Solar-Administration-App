///*
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//package sockets;
//
//import java.util.concurrent.Executors;
//import java.util.concurrent.ScheduledExecutorService;
//import java.util.concurrent.TimeUnit;
//import javax.servlet.ServletContextEvent;
//import javax.servlet.ServletContextListener;
//import javax.servlet.annotation.WebListener;
//import utilities.DataGenerator;
//        
///**
// * 
// * @author 856622
// */
//@WebListener
//public class RetrievalSim_v2 implements ServletContextListener {
//
//    private ScheduledExecutorService scheduler;
//    
//    @Override
//    public void contextInitialized(ServletContextEvent event) {
//        scheduler = Executors.newSingleThreadScheduledExecutor();
//        scheduler.scheduleAtFixedRate(new DataGenerator(), 60, 15, TimeUnit.SECONDS);
//    }
//
//    @Override
//    public void contextDestroyed(ServletContextEvent event) {
//        scheduler.shutdownNow();
//    }
//
//}