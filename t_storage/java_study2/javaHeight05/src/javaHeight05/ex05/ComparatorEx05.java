package javaHeight05.ex05;

import java.util.TreeSet;

public class ComparatorEx05 {

	public static void main(String[] args) {
		TreeSet<Fruit> fruitTs =new TreeSet<Fruit>(   new FruitComparator() );
		
		fruitTs.add( new Fruit("����", 3000)  );
		fruitTs.add( new Fruit("����", 10000) );
		fruitTs.add( new Fruit("����", 6000) );
		fruitTs.add( new Fruit("��", 3000) );
		fruitTs.add( new Fruit("���θӽ�Ű", 8000) );
		
		System.out.println( "Ʈ���� �޷� �ִ� ����� ������ " + fruitTs.size() ) ;
		
		
	}

}