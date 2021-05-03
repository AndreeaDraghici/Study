package sample;

//@author: AndreeaDraghici, April 2021

import abstractions.DrawbleElementInterface;
import implementation.BorderShapeDecorator;
import shapes.Circle;
import shapes.Rectangle;
import shapes.Triangle;

public class DecoratorPatternMain {

	public static void main(String[] args) {

	      DrawbleElementInterface circle = new Circle();
	      @SuppressWarnings("unused")
		  DrawbleElementInterface rectangle = new Rectangle();
	      @SuppressWarnings("unused")
		  DrawbleElementInterface triangle = new Triangle();

	      DrawbleElementInterface blackCircle = new BorderShapeDecorator(new Circle());
	      DrawbleElementInterface blackRectangle = new BorderShapeDecorator(new Rectangle());
	      @SuppressWarnings("unused")
		  DrawbleElementInterface blackTriangle= new BorderShapeDecorator(new Triangle());
	      
	      
	      System.out.println("--Circle with normal border--");
	      circle.draw();
	      
	      System.out.println("\n--Rectangle with normal border--");
	      circle.draw();
	      
	      System.out.println("\n--Triangle with normal border--");
	      circle.draw();

	      System.out.println("\n--Circle of black border--");
	      blackCircle.draw();

	      System.out.println("\n--Rectangle of black border--");
	      blackRectangle.draw();
	      
	      System.out.println("\n--Triangle of black border--");
	      blackRectangle.draw();
	   }

	}


