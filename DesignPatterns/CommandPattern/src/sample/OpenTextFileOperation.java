package sample;

import implementation.TextFile;
import interfaces.TextFileOperation;

//@author AndreeaDraghici
//April, 2021


public class OpenTextFileOperation implements TextFileOperation {

private TextFile textFile;
    
    public OpenTextFileOperation(TextFile textFile2) {
	this.textFile=textFile2;
}
 
	@Override
    public String execute() {
        return textFile.open();
    }

}
