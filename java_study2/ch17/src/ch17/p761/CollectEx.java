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
        totalList.add(new Student("홍길동", "남", 93));
        totalList.add(new Student("김수영", "여", 87));
        totalList.add(new Student("김자바", "남", 95));
        totalList.add(new Student("오혜영", "여", 93));
        
        //남학생만 묶어 List 생성하기
        List<Student> maleList = totalList.stream().filter( s->s.getSex().equals("남") )
                                 .collect( Collectors.toList() );
        for( Student s : maleList) {
        	System.out.println( s.getName() +" "+ s.getSex() );
        }

       //점수가 90점 이상만 뽑아서 Set 생성하기 동일한 점수는 1개만 출력되게 만든다. 93점은 1개만 출력 
        Set<Student> score90List = totalList.stream().filter( s -> s.getScore() >= 90 )
                                 .collect( Collectors.toSet() );// ? ?? error 다시 확인하기
        for( Student s : score90List) {
        	System.out.println( s.getName() +" "+ s.getScore() );
        }
        
        System.out.println();
        //Map - 키 학생이름, 값 - Student객체 학생점수
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
        
        //키- 김자바 값-남 95
        //entrySet() 메소드 사용해서 출력
        Map<String, Student> map2 = totalList.stream().collect(Collectors.toMap(s->s, null))
        
	}
}
