package ch17.p761;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class CollectEx2 {

	public static void main(String[] args) {
		List<Student> totalList = new ArrayList<Student>();
        totalList.add(new Student("ȫ�浿", "��", 93));
        totalList.add(new Student("�����", "��", 87));
        totalList.add(new Student("���ڹ�", "��", 95));
        totalList.add(new Student("������", "��", 93));
        
        Map<String, Double> map= totalList.stream()
        		.collect(Collectors.groupingBy(s->s.getSex(), Collectors.averagingDouble(s->s.getScore())));
        System.out.println(map);
        
        List<Student1> totalList1 = new ArrayList<Student1>();
        totalList1.add(new Student1("1","ȫ�浿", "��", 93));
        totalList1.add(new Student1("2","�����", "��", 87));
        totalList1.add(new Student1("1","���ڹ�", "��", 95));
        totalList1.add(new Student1("3","������", "��", 93));
        totalList1.add(new Student1("1","���", "��", 55));
        totalList1.add(new Student1("3","����", "��", 63));
        
        //�г⺰�� �ο��� ���ϱ� 1�г� 2�г� 3�г�
        Map<String, Double> map2= totalList.stream()
        		.collect(Collectors.groupingBy(s->s.getGrade(), Collectors.counting(s->s.getGrade())));  
        
        
        Map<String, Double> map1= totalList.stream()
        		.collect(Collectors.groupingBy(s->s.getSex(), Collectors.averagingDouble(s->s.getScore())));
        System.out.println(map);
	}

}
