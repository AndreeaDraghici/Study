package observer;
/*  @author: andreea */
public class Frigider extends AparatElectric{
	
	 public Frigider(Subject subject){
		 
	      this.subject = subject;
	      this.subject.attach(this);
	   }

	   @Override
	   public void update() {
		   System.out.println("Frigider conectat la prelungitor!");
	   }
}
