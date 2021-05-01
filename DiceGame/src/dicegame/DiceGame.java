package dicegame;
/* 
 * @auhor:AndreeaDraghici
 * 
 *   April 2021
 *   
 */
import java.util.Scanner;

public class DiceGame {
   Scanner sc=new Scanner(System.in);
   private DicePlayer player1;
   private DicePlayer player2;
   
   public DiceGame() {
	   this.player1=new DicePlayer();
	   this.player2=new DicePlayer();
   }
   public void startDiceGame() {
	   System.out.println("-----The first player prepares-----"+"\n");
	   System.out.println("Player 1 ready ? YES");
	   sc.nextLine();
	   player1.rollDice();
	   System.out.println("Player 1 rolled: "+player1.getDicesResult());
	   
	   System.out.println("\n-----The second player prepares-----"+"\n");
	   System.out.println("Player 2 ready ? YES");
	   sc.nextLine();
	   player2.rollDice();
	   System.out.println("Player 2 rolled: "+player2.getDicesResult());
	   checkWinner(player1,player2);
   }
   public void checkWinner( DicePlayer winner1, DicePlayer winner2) {
	   
	   int result1=player1.getDicesResult();
	   int result2=player2.getDicesResult();
	   if(result1==result2) {
		   System.out.println("\n######## IS A DRAW ! ########"); 
	   }else if(result1>result2) {
		   System.out.println("\n######## PLAYER 1 IS THE WINNER! ########");
	   }else if(result1<result2) {
		   System.out.println("\n######## PLAYER 2 IS THE WINNER! ########");
	   }
	   System.out.println("\n");
	   System.out.println("******* GAME COMPLETED ******* ");
   }
}
