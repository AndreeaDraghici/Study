package observer;
/*  @author: andreea */
public class Solution {

	public static void main(String[] args) {
		Subject subject = new Subject();
		
         new Frigider(subject);
         new Laptop(subject);
         System.out.println("Cand prelungitorul este bagat in priza, "
         		+ "toate aparatele conectate trebuie sa dea un mesaj: \n");
         subject.setState(0);
	}

}
