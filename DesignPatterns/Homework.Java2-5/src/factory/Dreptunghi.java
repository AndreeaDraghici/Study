package factory;
//@author andreea
public class Dreptunghi implements Plansa {

	public double inaltimea=0;
	public double lungimea=0;
	public static int verificare=1;
	
	public Dreptunghi() {}
	public Dreptunghi(double _inaltimea, double _lungimea){
		
		this.inaltimea=_inaltimea;
		this.lungimea=_lungimea;
	}
	
	@Override
	public float computeArea() {
		  
	     return (float) (inaltimea*lungimea);
	  }
}
