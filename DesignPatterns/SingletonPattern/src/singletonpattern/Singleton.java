package singletonpattern;
/*
  
 Complete the Singleton class in your editor which contains the following components:

 A private Singleton non parameterized constructor.
 A public String instance variable named .
 Write a static method named getSingleInstance that returns the single instance of the Singleton class.
 
 Once submitted, our hidden Solution class will check your code by taking a String as input 
 and then using your Singleton class to print a line.
 
 */


/* @author: AndreeaDraghici */
/*April,2021*/

public class Singleton {
	
	public String str;
	private Singleton(){ 
		str ="Hello I am a string part of Singleton class";
	}
    private static Singleton instance=null;
    public static Singleton getSingleInstance() {
        if(instance==null) {
            instance=new Singleton();
        }
        return instance;
    }
}
