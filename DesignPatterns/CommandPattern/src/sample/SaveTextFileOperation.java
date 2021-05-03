package sample;

import interfaces.TextFileOperation;
import implementation.TextFile;

//@author AndreeaDraghici
//April, 2021

public class SaveTextFileOperation implements TextFileOperation{
	
	private TextFile textFile;
    
    public SaveTextFileOperation(TextFile textFile2) {
		this.textFile=textFile2;
	}

	@Override
    public String execute() {
        return textFile.save();
    }
}
