import java.util.Scanner;

public aspect Login {
	private static Scanner dato = new Scanner(System.in);
	pointcut pre() : call(* make*()) || call( * my*() );
    before() : pre() {
    	System.out.println("Usuario: ");
    	dato.nextLine();
    	System.out.println("Clave: ");
    	dato.nextLine();
    }
}