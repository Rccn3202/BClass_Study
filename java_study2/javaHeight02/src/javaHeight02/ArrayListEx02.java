package javaHeight02;

import java.util.ArrayList;
import java.util.List;

public class ArrayListEx02 {

	public static void main(String[] args) {
		
		List list2 =new ArrayList<Integer>();
		
		//1~10 넣기
		for(int i=1;i<=10;i++) {
		list2.add(i);
		}
		
		//4번 인덱스에 값을 50으로 바꾼다
		list2.set(4, 50);
		
		//전체를 출력하기
		for(int i=0;i<=9;i++) {
			System.out.print(list2.get(i)+" ");
			}
		

	}

}
