package factorypattern;

import java.util.Scanner;
/*
 In this problem, you are given an interface Food. 
 There are two classes Pizza and Cake which implement the Food interface, and they both contain a method getType().

The main function in the Main class creates an instance of the FoodFactory class. 
The FoodFactory class contains a method getFood(String) 
that returns a new instance of Pizza or Cake according to its parameter.
 */


/*@author AndreeaDraghici*/
/*April,2021*/

public class Main {

	public static void main(String[] args) {
		Scanner sc=new Scanner(System.in);
		try{
			//creating the factory
			FoodFactory foodFactory = new FoodFactory();
			//factory instantiates an object
			Food food = foodFactory.getFood(sc.nextLine());
			//System.out.println(food.getClass());
			System.out.println(food.getType());
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		}
	 }
}
