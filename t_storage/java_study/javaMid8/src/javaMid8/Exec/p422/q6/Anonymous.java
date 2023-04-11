package javaMid8.Exec.p422.q6;

public class Anonymous {

	Vehicle field = new Vehicle() {
		
		@Override
		public void run() {
			System.out.println("자동차가 달립니다.");
		}
	};

	public void method1() {
		Vehicle localVar = new Vehicle() {
			
			@Override
			public void run() {
				System.out.println("승용차가 달립니다.");
				
			}
		};
		
		localVar.run();
		
	}

	public void method2(Vehicle v) {
		v.run();
	}
}
