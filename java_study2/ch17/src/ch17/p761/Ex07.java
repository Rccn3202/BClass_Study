package ch17.p761;

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Ex07 {

	public static void main(String[] args) {
		List<Member2> list = Arrays.asList(
		new Member2("ȫ","������"),
		new Member2("��","�����̳�"),
		new Member2("��","������")
				);
		
		List<Member2> developers = list.stream().filter(m->m.getJob().equals("������")).collect(Collectors.toList());
				
		
		developers.stream().forEach(m->System.out.println(m.getName()));

	}

}
