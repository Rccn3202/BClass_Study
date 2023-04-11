package javaHeight05.ex05;

import java.util.Comparator;

public class FruitComparator implements Comparator<Fruit>{

	@Override
	public int compare(Fruit o1, Fruit o2) {
		// o2 트리에 달려 있는 자료의 주소, o1 트리에 달리고 싶은 자료의 주소 
	/*	 가격을 기준으로 트리에 달아 줌
		System.out.println( o1.getPrice() );
		System.out.println( o2.getPrice());
		System.out.println( o1.getPrice().compareTo(o2.getPrice() ) + "이곳을 찍어봐~~~" );
		System.out.println();
	
		return o1.getPrice().compareTo(o2.getPrice() );*/
	 /* 과일명을 기준으로 트리에 달아 줌 */
		System.out.println( o1.getName() );
		System.out.println( o2.getName() );
		System.out.println( o1.getName().compareTo(o2.getName()) + " 두개 비교한 값 " );
		return o1.getName().compareTo(o2.getName());
	}
}
