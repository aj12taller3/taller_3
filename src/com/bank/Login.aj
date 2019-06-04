package com.bank;
import java.io.File;
import java.util.Calendar;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;	
import java.util.Scanner;


public aspect Login {
    //Aspecto2: El login debe realizarse antes de la transacci�n
	private static Scanner input = new Scanner(System.in);
}
