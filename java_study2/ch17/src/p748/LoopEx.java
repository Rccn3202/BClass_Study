package p748;

import java.util.Arrays;
import java.util.OptionalDouble;







public class LoopEx {

	public static void main(String[] args) {
		int[] intArr= {1,2,3,4,5};
		
		int total=Arrays.stream(intArr).filter(a->a%2==0)
		.peek(n->System.out.println(n)) //�߰�ó���� �ݺ�ó�� �� �� �̿���
		.sum();

		System.out.println(total);	//peek�̿��� ����ó���� �����Լ� �ʿ�, ��ü����� �ʿ��� ��쿡 �̿�
	
		
		int[] intArr1= {2,4,6,5,};
		//��� �����ؾ� �Ǵ� ��(and����) - allMatch(). �Ѱ��� ����(or����) - anyMatch, ��� �����̸� ��(noneMatch)
		boolean d=Arrays.stream(intArr1)
				.allMatch(a->a%2==0);
		
		System.out.println(d);
		
		d=Arrays.stream(intArr1).anyMatch(a->a%2==0);
		System.out.println(d);
		
		d=Arrays.stream(intArr1).noneMatch(a->a%7==0);
		System.out.println(d);
		
		System.out.println();
		
		Student[] studentArr = {
				new Student("ȫ",100),
				new Student("��",80),
				new Student("��",60),
				new Student("ȫ",60),
				new Student("��",50),
				new Student("��",40),
				new Student("��",70)};
			
		//������ ��� 60 ����? t
	//������ �Ѱ��� 80 ����? t
	//������ ��� 100�� �̻�? f
	
	boolean b=Arrays.stream(studentArr).allMatch(a->a.getScore()>=60);
	System.out.println(b);
	b=Arrays.stream(studentArr).anyMatch(a->a.getScore()>=80);
	System.out.println(b);
	b=Arrays.stream(studentArr).noneMatch(a->a.getScore()==100);
	System.out.println(b);
		
	System.out.println();
	//ī����, ����,���,�ִ밪,�ּҰ�,ù��° ���
	
	long countResult=Arrays.stream(studentArr).count();
	System.out.println("�б��ο���"+countResult);
	
	int countResult1=Arrays.stream(studentArr).mapToInt(n->n.getScore()).sum();
	System.out.println(countResult1);
	
	
	double avg=Arrays.stream(studentArr).mapToInt(a->a.getScore()).average().getAsDouble();
	System.out.println(avg);
	
	int max=Arrays.stream(studentArr).mapToInt(s->s.getScore()).min().getAsInt();
	System.out.println(max);

	
	
	
	
	
	
	
	
	
	
	}
}
