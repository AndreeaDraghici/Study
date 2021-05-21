package observer;
/*  @author: andreea */
public class Laptop extends AparatElectric{
	
	public Laptop(Subject subject){
		 
	      this.subject = subject;
	      this.subject.attach(this);
	   }

	   @Override
	   public void update() {
		   
		   System.out.println("\nLaptop conectat la prelungitor!");
	   }
}
