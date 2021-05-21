package factory;
//@author andreea
public class Solution {

	public static void main(String[] args) {
		
		int verificare=1;
		Factory fact=new Factory(verificare);
		Plansa shape=fact.getShape();
		//apelam metoda computeArea 
		System.out.println("Aria este: " + shape.computeArea());
	}

}
