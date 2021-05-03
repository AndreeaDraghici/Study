package implementation;

//@author AndreeaDraghici
//April, 2021

import java.util.ArrayList;
import java.util.List;

import interfaces.TextFileOperation;

public class TextFileOperationExecutor {
	 private final List<TextFileOperation> textFileOperations = new ArrayList<>();
    
    public String executeOperation(TextFileOperation textFileOperation) {
        textFileOperations.add(textFileOperation);
        return textFileOperation.execute();
    }
}
