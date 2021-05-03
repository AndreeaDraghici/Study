package implementation;
//@author: AndreeaDraghici, April 2021

import abstractions.DrawbleElementInterface;

public class BorderShapeDecorator extends ShapeDecorator {

	public BorderShapeDecorator(DrawbleElementInterface _decoratedShape) {
		super(_decoratedShape);
	}
	
	@Override
	   public void draw() {
	      decoratedShape.draw();	       
	      setBorder(decoratedShape);
	   }
	
	@SuppressWarnings("unused")
	private void setBorder(DrawbleElementInterface decoratedShape){
	      System.out.println("Border Color: Black\n");
	   }
}
