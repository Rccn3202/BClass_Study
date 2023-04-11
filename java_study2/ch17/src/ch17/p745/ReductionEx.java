package ch17.p745;

import java.util.Arrays;
import java.util.List;



public class ReductionEx {

	public static void main(String[] args) {
		List<Student> studentList 
		   = Arrays.asList(new Student("홍길동", 92), new Student("신용권", 95), new Student("김자바", 88));
		
		//방법1) 합계구하기
		int sumResult = studentList.stream().mapToInt( s -> s.getScore() ).sum();
		System.out.println(sumResult);
		
		//방법2)
		sumResult = studentList.stream().map(Student::getScore) // 92 95 88
		                         .reduce(0, (a,b) -> a+b );
		
		System.out.println(sumResult);
		
		// 식이 더해서 - 20 해보기
		sumResult = studentList.stream().map(Student::getScore) // 92 95 88
                .reduce(0, (a,b) -> a+b-20 ); // 0+92-20  72+95-20 147+88-20 

        System.out.println(sumResult);
        //비어 있는 스트림을 만들어서 코드 수행
        List<Student> studentList1  = Arrays.asList();
        sumResult = studentList1.stream().map(Student::getScore) // 데이터 없음
                .reduce(0, (a,b) -> a+b-20 ); // 기본값 0 출력됨

        System.out.println(sumResult);

	}

}
