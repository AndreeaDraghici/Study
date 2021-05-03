package shapes;
//@author: AndreeaDraghici, April 2021
import abstractions.DrawbleElementInterface;

public class Rectangle implements DrawbleElementInterface {

	@Override
	public void draw() {
		
		System.out.println("Shape: This is a Rectangle");
	}

}
