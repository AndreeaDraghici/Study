package adapter;
/*  @author: andreea */

public class AdapterFormC3NrTOC2Nr {
	
      public C3Nr adapter;
 
      public AdapterFormC3NrTOC2Nr() {}
      
      public AdapterFormC3NrTOC2Nr(C3Nr _adapter){
	      this.adapter=_adapter;
         }
 
       public int suma(int numar1,int numar2) { return adapter.sumaC3Nr(numar1, numar2, 0);}
}
