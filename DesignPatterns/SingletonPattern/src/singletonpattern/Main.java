package singletonpattern;

/*@author:AndreeaDraghici*/
/*April,2021*/


public class Main {

	public static void main(String[] args) {
		
 //instantiating Singleton class with variable s
		Singleton s = Singleton.getSingleInstance();
		System.out.println("My string is:\n" + s.str);
	}
}
