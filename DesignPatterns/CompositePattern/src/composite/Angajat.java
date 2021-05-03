package composite;
//@author AndreeaDraghici
import java.util.ArrayList;
import java.util.List;

public class Angajat {
   private String nume;
   private String departament; 
   private int salariu;
   
   private List<Angajat>angajati;
   
   public Angajat(String _nume, String _departament, int _salariu) {
	   this.nume=_nume;
	   this.departament=_departament;
	   this.salariu=_salariu;
	   angajati=new ArrayList<Angajat>();
   }
   public void adaugare(Angajat ang) {angajati.add(ang);}
   public void stergere(Angajat ang) {angajati.remove(ang);}
   
   public List<Angajat> getAngajati(){
	     return angajati;
	   }
   public String toString(){
	      return ("ANGAJAT:[ NUME : " + nume + ", DEPARTAMENT : " + departament + ", SALARIU :" + salariu+" ]");
	   }
   }
