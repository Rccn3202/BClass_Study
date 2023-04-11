package ch17.p761;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class CollectEx2 {

	public static void main(String[] args) {
		List<Student> totalList = new ArrayList<Student>();
        totalList.add(new Student("홍길동", "남", 93));
        totalList.add(new Student("김수영", "여", 87));
        totalList.add(new Student("김자바", "남", 95));
        totalList.add(new Student("오혜영", "여", 93));
        
        Map<String, Double> map= totalList.stream()
        		.collect(Collectors.groupingBy(s->s.getSex(), Collectors.averagingDouble(s->s.getScore())));
        System.out.println(map);
        
        List<Student1> totalList1 = new ArrayList<Student1>();
        totalList1.add(new Student1("1","홍길동", "남", 93));
        totalList1.add(new Student1("2","김수영", "여", 87));
        totalList1.add(new Student1("1","김자바", "남", 95));
        totalList1.add(new Student1("3","오혜영", "여", 93));
        totalList1.add(new Student1("1","김바", "남", 55));
        totalList1.add(new Student1("3","오영", "여", 63));
        
        //학년별로 인원수 구하기 1학년 2학년 3학년
        Map<String, Double> map2= totalList.stream()
        		.collect(Collectors.groupingBy(s->s.getGrade(), Collectors.counting(s->s.getGrade())));  
        
        
        Map<String, Double> map1= totalList.stream()
        		.collect(Collectors.groupingBy(s->s.getSex(), Collectors.averagingDouble(s->s.getScore())));
        System.out.println(map);
	}

}
