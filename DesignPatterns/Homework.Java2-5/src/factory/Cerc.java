package factory;
import java.lang.Math;
//@author andreea

public class Cerc implements Plansa  {
	
  public float raza;
  public static int verificare=2;
  
  public Cerc() {}
  public Cerc(float _raza) {this.raza=_raza; }
  
 @Override
  public float computeArea() {
	  
     return (float) (Math.PI * Math.pow(raza, 2));
  }
}
