package composite;

//@author AndreeaDraghici

public class CompositePattern {
	public static void main(String[] args) {
		
/*Utilizam clasa Angajaț pentru a crea și afisa lista(ierarhia) anagjatilor.
*CompositePattern=descrie un grup de obiecte care este tratat la fel ca o singura instanta a aceluiasi tip de obiect.
*/
		Angajat boss=new Angajat("Popescu","CEO",30000);
        Angajat sef_vanzari=new Angajat("Ionescu","Vanzari",2500);
        Angajat angajat1=new Angajat("Georgescu","Marketing",2700);
        Angajat angajat2=new Angajat("Sporti","Sport",5000);
        Angajat functionar=new Angajat("Ratji","IT",2000);
        
        boss.adaugare(sef_vanzari);
        boss.adaugare(angajat1);
        
        sef_vanzari.adaugare(functionar);
        angajat1.adaugare(angajat2);
   
        //afisam toti anagajatii
        
        System.out.println(boss);
        for(Angajat listAngajati: boss.getAngajati() ) {
        	System.out.println(listAngajati);
        
        for (Angajat angajat: listAngajati.getAngajati()) {
        	System.out.println(angajat); }
       }
	}
}
