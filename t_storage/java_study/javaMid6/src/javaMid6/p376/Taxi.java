package javaMid6.p376;

public class Taxi implements Vehicle{
	@Override
	public void run() {
	   System.out.println("택시가 달립니다.");	
	}
	@Override
	public void fare() {
		System.out.println("3850원");
		
	}
}
