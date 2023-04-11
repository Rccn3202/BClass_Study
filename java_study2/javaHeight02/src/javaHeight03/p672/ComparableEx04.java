package javaHeight03.p672;

import java.util.Iterator;
import java.util.TreeSet;

public class ComparableEx04 {

	public static void main(String[] args) {
		TreeSet<Person> ts = new TreeSet<Person>();
		ts.add(new Person("ȫ�浿",45));
		ts.add(new Person("���ڹ�",25));
		ts.add(new Person("������",31));
		
		for(Person person : ts) {
			System.out.println(person.name+":"+person.age);
		}
		System.out.println();

		TreeSet<Person> ts1=new TreeSet<Person>();
		ts1.add(new Person("ȫ�浿",45,1.1 ));
		ts1.add(new Person("��",47,1.2 ));
		ts1.add(new Person("��",35,1.67 ));
		ts1.add(new Person("��",23,1.18));
		
		for(Person person : ts1) {
			System.out.println(person.name+":"+person.age);
		}
	}

}
