import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

public aspect Log {
    File f = new File("log.txt"); 
    Calendar cal = Calendar.getInstance();
    pointcut success() : call(* create*(..) );
    after() : success() {
    	System.out.println("**** User created ****");
    	
    }
    
    pointcut retiro() : call( * myMoney());
    after() : retiro(){
    	try{
    		FileWriter fileW = new FileWriter(f);
    		BufferedWriter buff = new BufferedWriter(fileW);
    		PrintWriter printW = new PrintWriter(buff);  
    		printW.write("Tipo de transaccion: Dinero Retirado, fecha y hora: "+cal.getTime()+" ");
    		printW.close();
    		buff.close();
    		}catch(IOException e){};
    }
    
    pointcut transaccion() : call( * makeTransaction());
    after() : transaccion(){
    	try{
    		FileWriter fileW = new FileWriter(f);
    		BufferedWriter buff = new BufferedWriter(fileW);
    		PrintWriter printW = new PrintWriter(buff);  
    		printW.write("Tipo de transaccion: Transaccion Realizada, fecha y hora: "+cal.getTime()+" ");
    		printW.close();
    		buff.close();
    		}catch(IOException e){};
    }
    
    

}