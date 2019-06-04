package com.bank;

import java.io.File;
import java.util.Calendar;

public aspect Log {
    
    File file = new File("log.txt");
    Calendar cal = Calendar.getInstance();
    //Aspecto1: Deben hacer los puntos de cortes (pointcut) para crear un log con los tipos de transacciones realizadas.
    pointcut success() : call(* void makeTransaction*(..) );
    after() : success() {
    	System.out.println("**** User created ****");
    }
}
