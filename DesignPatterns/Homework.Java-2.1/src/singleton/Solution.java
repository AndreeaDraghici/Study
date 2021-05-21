package singleton;
//author: @ andreea

public class Solution {

	private String color;
	private String weight;
	private static Solution instance=null;
	
	private Solution() {}
    
    public static Solution getSingleInstance() {
    	
        if(instance==null) {
        	
            instance=new Solution();
        }
        return instance;
    }
    
    public static String GetColor() { return instance.color;}
    public void SetColor(String _color) {instance.color=_color;}
    
    public static String GetWeight() { return instance.weight;}
    public void SetWeight(String _weight) {instance.weight=_weight;}   
}