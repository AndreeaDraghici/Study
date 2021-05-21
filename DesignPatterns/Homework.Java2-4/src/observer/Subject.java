package observer;
/*  @author: andreea */
import java.util.ArrayList;
import java.util.List;

public class Subject {
	
	 private List<AparatElectric> observers = new ArrayList<AparatElectric>();
	   private int state;

	   public int getState() {
	      return state;
	   }

	   public void setState(int state) {
	      this.state = state;
	      notifyAllObservers();
	   }

	   public void attach(AparatElectric observer){
	      observers.add(observer);		
	   }

	   public void notifyAllObservers(){
	      for (AparatElectric observer : observers) {
	         observer.update();
	      }
	   } 	
}
