package javaMid6.p376;

public class Driver {
	
   void driver(Vehicle vehicle) {
	   vehicle.run();
   }
	
   void farePrint(Vehicle vechicle) {
	   vechicle.fare();
   }
   
	public int fare(Vehicle vechicle) {
		int fare = 0;
		if( vechicle instanceof Bus) {
			fare = 1350;
		} else if( vechicle instanceof Taxi ) {
			fare = 3850;
		} else if ( vechicle instanceof Subway) {
			fare = 1650;
		}
		return fare;
	}
   
}
