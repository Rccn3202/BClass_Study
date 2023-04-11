package ch17.p761;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collector;
import java.util.stream.Collectors;

public class CollectEx {

	public static void main(String[] args) {
        List<Student> totalList = new ArrayList<Student>();
        totalList.add(new Student("ȫ�浿", "��", 93));
        totalList.add(new Student("�����", "��", 87));
        totalList.add(new Student("���ڹ�", "��", 95));
        totalList.add(new Student("������", "��", 93));
        
        //���л��� ���� List �����ϱ�
        List<Student> maleList = totalList.stream().filter( s->s.getSex().equals("��") )
                                 .collect( Collectors.toList() );
        for( Student s : maleList) {
        	System.out.println( s.getName() +" "+ s.getSex() );
        }

       //������ 90�� �̻� �̾Ƽ� Set �����ϱ� ������ ������ 1���� ��µǰ� �����. 93���� 1���� ��� 
        Set<Student> score90List = totalList.stream().filter( s -> s.getScore() >= 90 )
                                 .collect( Collectors.toSet() );// ? ?? error �ٽ� Ȯ���ϱ�
        for( Student s : score90List) {
        	System.out.println( s.getName() +" "+ s.getScore() );
        }
        
        System.out.println();
        //Map - Ű �л��̸�, �� - Student��ü �л�����
        Map<String, Integer> map
                  = totalList.stream()
                             .collect(Collectors.toMap( s->s.getName(), s->s.getScore()));
        System.out.println( map );
        
        System.out.println();
        Set<String> keySets = map.keySet();
        Iterator<String> it = keySets.iterator();
        while( it.hasNext() ) {
        	String key = it.next();
        	System.out.println(  key + " " +  map.get(key)  );
        }
        
        //Ű- ���ڹ� ��-�� 95
        //entrySet() �޼ҵ� ����ؼ� ���
        Map<String, Student> map2 = totalList.stream().collect(Collectors.toMap(s->s, null))
        
	}
}
