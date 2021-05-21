package adapter;
import java.util.Scanner;
/*  @author: andreea */

public class Solution {

	public static void main(String[] args) {
		
		try (Scanner scan = new Scanner(System.in)) {
			
			System.out.println("Introdu nr1 ");
			int numar1=scan.nextInt();
			
			System.out.println("Introdu nr2 ");
			int numar2=scan.nextInt();
			
			System.out.println("Introdu nr3 ");
			int numar3=scan.nextInt();
			
			C2Nr index=new C2Nr();
			System.out.println("Suma a doua numere -> "+index.sumaC2Nr(numar1, numar2));
			
			C3Nr index2=new C3Nr();
			System.out.println("Suma a trei numere -> "+index2.sumaC3Nr(numar1, numar2, numar3));
			
			AdapterFormC3NrTOC2Nr adapterform=new AdapterFormC3NrTOC2Nr(index2);
			System.out.println("Suma finala -> "+adapterform.suma(numar1, numar2));
		}
	}

}
