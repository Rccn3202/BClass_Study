package javaMid10.p467;

public class ExceptionEx04 {

	public static void main(String[] args) {
		int k=0;
		int a=10;
		try {
		     Class.forName("java.lang.String");
		     a=10 / k;
		     int[] number= {10,20,30,40,50};
		     System.out.println(  number[2] );
		} catch( ArithmeticException e) {
			if (k==0) { k=5;
			            System.out.println( a/k ); 
			          }
			System.out.println("숫자 잘못 ");
		} catch(Exception e) {
			System.out.println( "모두 예외 최상위 클래스로 모든 예외를 다 받는다." + e.getMessage());
			
		} finally {
			System.out.println("정상 종료하기");
		}
		 

	}

}
