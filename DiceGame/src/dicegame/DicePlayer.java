package dicegame;
/* 
 * @auhor:AndreeaDraghici
 * 
 *  April 2021
 *   
 */
public class DicePlayer {
private int result;
private Dice dice1;
private Dice dice2;

public DicePlayer() {
 dice1=new Dice();
 dice2=new Dice();	
}
public int getDicesResult() {return result;}

public void setDicesResult(int dicesResult) {this.result = dicesResult;}

public void rollDice() {
	
	int randomResult1 = (int) (Math.random() * 6 + 1);
    int randomResult2 = (int) (Math.random() * 6 + 1);
    int dice1Result = dice1.getDice(randomResult1-1);
    int dice2Result = dice2.getDice(randomResult2-1);
    this.setDicesResult(dice1Result + dice2Result);
  }
}