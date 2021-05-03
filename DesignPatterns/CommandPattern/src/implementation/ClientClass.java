package implementation;
import java.io.IOException;

//@author AndreeaDraghici
//April, 2021
import sample.OpenTextFileOperation;
import sample.SaveTextFileOperation;

public class ClientClass {

	public static void main(String[] args) throws IOException {
		
		try {
		TextFileOperationExecutor textFileOperationExecutor = new TextFileOperationExecutor();
	    textFileOperationExecutor.executeOperation(new OpenTextFileOperation(new TextFile("file1.txt")));
	    textFileOperationExecutor.executeOperation(new SaveTextFileOperation(new TextFile("file2.txt")));
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
		}
		TextFileOperationExecutor textFileOperationExecutor = new TextFileOperationExecutor();
		textFileOperationExecutor.executeOperation(() -> "Opening file file1.txt");
		textFileOperationExecutor.executeOperation(() -> "Saving file file1.txt");
		
		TextFileOperationExecutor textFileOperationExecutor1= new TextFileOperationExecutor();
		TextFile textFile = new TextFile("file1.txt");
		textFileOperationExecutor1.executeOperation(textFile::open);
		textFileOperationExecutor1.executeOperation(textFile::save);
	}

}
