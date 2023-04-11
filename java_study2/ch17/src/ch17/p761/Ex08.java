package ch17.p761;

import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class Ex08 {

	public static void main(String[] args) {
		List<Member2> list = Arrays.asList(
				new Member2("홍","개발자"),
				new Member2("김","디자이너"),
				new Member2("신","개발자")
				);
		
		Map<String, List<Member2>> groupingMap = list.stream()
				.collect(Collectors.groupingBy(s->s.getJob()));
				System.out.println("[개발자]");
				groupingMap.get("개발자").stream().forEach(m->System.out.println(m));
	System.out.println();
	System.out.println("[디자이너]");
	groupingMap.get("디자이너").stream().forEach(m->System.out.println(m));
				

	}

}
