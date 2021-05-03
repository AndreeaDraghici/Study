package factorypattern;

/*@author AndreeaDraghici*/
/*April,2021*/

class FoodFactory {
	public Food getFood(String order) {
		
		switch(order) {
		case "PIZZA":
			return new Pizza();
		case"CAKE":
			return new Cake();
			default:
				return null;
		}
	}
}