package ch17.p761;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Ex07 {

	public static void main(String[] args) {
		List<Member2> list = Arrays.asList(
		new Member2("홍","개발자"),
		new Member2("김","디자이너"),
		new Member2("신","개발자")
				);
		
		List<Member2> developers = list.stream().filter(m->m.getJob().equals("개발자")).collect(Collectors.toList());
				
		
		developers.stream().forEach(m->System.out.println(m.getName()));

	}

}
