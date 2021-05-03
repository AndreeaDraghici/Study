package shapes;

//@author: AndreeaDraghici, April 2021

import abstractions.DrawbleElementInterface;

public class Triangle implements DrawbleElementInterface {

	@Override
	public void draw() {
		System.out.println("Shape: This is a Triangle");	
	}

}
