package ch17.p761;

import java.util.Arrays;
import java.util.List;

public class Ex06 {

	public static void main(String[] args) {
		List<Member> list = Arrays.asList(new Member("È«",30),new Member("½Å",40),new Member("±è",26));
		
		double avg = list.stream().mapToInt(Member :: getAge).average().getAsDouble();
		System.out.println(avg);

	}

}
