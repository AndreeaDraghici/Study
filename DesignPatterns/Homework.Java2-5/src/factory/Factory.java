package factory;
//@author andreea
public class Factory {
	
	
	//am creat o clasa numita Factory pentru a genera un obiect bazat pe informatiile date
	
	//use getShape method to get object of type shape 
	private int shapeType;
	
    public Factory(int _verificare) {
 
    	this.shapeType=_verificare;
    }

	public Plansa getShape(){
		   	
	      if(shapeType==Dreptunghi.verificare){
	    	  
	         return new Dreptunghi(4,3);
	         
	      } else if(shapeType==Cerc.verificare){
	    	  
	          return new Cerc(12);
	      }
	      return null;
	   }
}
