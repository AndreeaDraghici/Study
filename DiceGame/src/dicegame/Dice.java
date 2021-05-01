package dicegame;
/* 
 * @auhor:AndreeaDraghici
 * 
 *   April 2021
 *   
 *   */
public class Dice {
	
private int[] val= {1,2,3,4,5,6};

public int[]getValue(){
	return val;
}

public void setValue(int[] _val){
	this.val=_val;
}

public int getDice(int idx){
	return val[idx];
}

}
