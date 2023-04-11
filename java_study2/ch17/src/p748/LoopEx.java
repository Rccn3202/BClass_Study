package p748;

import java.util.Arrays;
import java.util.OptionalDouble;







public class LoopEx {

	public static void main(String[] args) {
		int[] intArr= {1,2,3,4,5};
		
		int total=Arrays.stream(intArr).filter(a->a%2==0)
		.peek(n->System.out.println(n)) //중간처리로 반복처리 할 때 이용함
		.sum();

		System.out.println(total);	//peek이용은 최종처리로 집계함수 필요, 전체출력이 필요한 경우에 이용
	
		
		int[] intArr1= {2,4,6,5,};
		//모두 만족해야 되는 것(and연산) - allMatch(). 한개라도 만족(or연산) - anyMatch, 모두 거짓이면 참(noneMatch)
		boolean d=Arrays.stream(intArr1)
				.allMatch(a->a%2==0);
		
		System.out.println(d);
		
		d=Arrays.stream(intArr1).anyMatch(a->a%2==0);
		System.out.println(d);
		
		d=Arrays.stream(intArr1).noneMatch(a->a%7==0);
		System.out.println(d);
		
		System.out.println();
		
		Student[] studentArr = {
				new Student("홍",100),
				new Student("김",80),
				new Student("이",60),
				new Student("홍",60),
				new Student("김",50),
				new Student("이",40),
				new Student("박",70)};
			
		//점수가 모두 60 넘음? t
	//점수중 한개라도 80 넘음? t
	//점수가 모두 100점 이상? f
	
	boolean b=Arrays.stream(studentArr).allMatch(a->a.getScore()>=60);
	System.out.println(b);
	b=Arrays.stream(studentArr).anyMatch(a->a.getScore()>=80);
	System.out.println(b);
	b=Arrays.stream(studentArr).noneMatch(a->a.getScore()==100);
	System.out.println(b);
		
	System.out.println();
	//카운팅, 총합,평균,최대값,최소값,첫번째 요소
	
	long countResult=Arrays.stream(studentArr).count();
	System.out.println("학교인원수"+countResult);
	
	int countResult1=Arrays.stream(studentArr).mapToInt(n->n.getScore()).sum();
	System.out.println(countResult1);
	
	
	double avg=Arrays.stream(studentArr).mapToInt(a->a.getScore()).average().getAsDouble();
	System.out.println(avg);
	
	int max=Arrays.stream(studentArr).mapToInt(s->s.getScore()).min().getAsInt();
	System.out.println(max);

	
	
	
	
	
	
	
	
	
	
	}
}
