package ch17.p761;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class Ex08 {

	public static void main(String[] args) {
		List<Member2> list = Arrays.asList(
				new Member2("ȫ","������"),
				new Member2("��","�����̳�"),
				new Member2("��","������")
				);
		
		Map<String, List<Member2>> groupingMap = list.stream()
				.collect(Collectors.groupingBy(s->s.getJob()));
				System.out.println("[������]");
				groupingMap.get("������").stream().forEach(m->System.out.println(m));
	System.out.println();
	System.out.println("[�����̳�]");
	groupingMap.get("�����̳�").stream().forEach(m->System.out.println(m));
				

	}

}
