package implementation;

//@author AndreeaDraghici
//April, 2021

public class TextFile {
	
private String name;
    
public TextFile(String _name) {
	this.name=_name;
}

public String open() {
        return "Opening file " + name;
    }
    
public String save() {  
        return "Saving file " + name;
    }
    
}
