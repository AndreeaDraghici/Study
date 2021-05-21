package singleton;
import java.io.File;
import java.io.FileWriter;
import java.util.Scanner;
import java.io.IOException;
import java.util.NoSuchElementException;
import java.io.FileNotFoundException;
// author: @ andreea

public class Main {
	 static void write()
		{
			try 
			{
		     FileWriter file = new FileWriter("output.txt");
		     file.write("#F3AA34");
		     file.append('\n');
		     file.write("23");
		     file.close();
			}
			
			catch(IOException e)
			{
			  System.out.println("Eroare la deschiderea fisierului " + e.getMessage());
			  e.getStackTrace();
			}
		
		}
		 
		 public static void read() throws NoSuchElementException, FileNotFoundException
		 {
			
			 File myfile = new File("output.txt");
		     Scanner scanner = new Scanner(myfile);
					
			while(scanner.hasNextLine())
					{
				       Solution.getSingleInstance().SetColor(scanner.next());
				       Solution.getSingleInstance().SetWeight(scanner.next());
					}
			
			scanner.close();
			
		 }
	public static void main(String[] args) {
			     	try
				    {
					  write();
					  read();
				    }
					
					 catch(FileNotFoundException ex)
					{
						System.out.println("Eroare la procesarea fisierului " + ex.getMessage());
					}
						
				    catch(NoSuchElementException e)
					{
						System.out.println("Eroare neasteptata");
						e.printStackTrace();
					}
					
			 	
	}

}
