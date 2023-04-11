package javaHeight01.p640;

import java.util.ArrayList;
import java.util.List;

public class CollectionEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList arrayList=new ArrayList(); //ArrayList 캑체생성,임포트
		List list1=new ArrayList();  //다형성 많이 씀
		
		int[] n1=new int[3];
		//숫자 3개 넣었는데 숫자 2개 더 넣어주어야함
		//방법: 5개 배열을 새로 만들고 옮겨주어야한다
		//배열 단점: 추가하거나 중간에 비어있는 경우가 있어도 그대로 유지됨. 메모리 효율 떨어짐
		//ArrayList는 배열의 단점 보완하기 위한것
		list1.add("a");
		list1.add("B");
		list1.add("c");
		list1.add("d");
		
		System.out.println(list1.get(3));
		System.out.println("들어있는 갯수"+list1.size());
		//k라는 자료 있나요
		System.out.println(list1.equals("k"));
	}	

}
