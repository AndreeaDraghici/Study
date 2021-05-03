package implementation;

//@author: AndreeaDraghici, April 2021

import abstractions.DrawbleElementInterface;

public abstract class ShapeDecorator implements DrawbleElementInterface {
	
	   protected  DrawbleElementInterface decoratedShape;

	   public ShapeDecorator( DrawbleElementInterface _decoratedShape){
	      this.decoratedShape = _decoratedShape;
	   }

	   public void draw(){
	      decoratedShape.draw();
	   }	
	}