package javaHeight05.ex04;

public class Person implements Comparable<Person>{
   
   private String name;
   private int age;
   private Double score;
   
   
	public Double getScore() {
	return score;
}
	
	public void setScore(Double score) {
		this.score = score;
	}

	@Override
	public int compareTo(Person o) {
	 //1. 이름순으로 하기
	//	return name.compareTo(o.name);   //String 클래스에 있는 메소드를 호출함 그래서 알아서 0, -1, 1을 구해줌
// 2. 나이순으로 하기 		
//		if( age < o.age ) return -1;
//		else if( age == o.age) return 0;
//		else return 1;
	//3. 이름의 역순으로 하기
	//	return o.name.compareTo(name);
	//4. 나이역순으로 출력하기
//		if( o.age < age) return -1;
//		else if ( o.age == age) return 0;
//		else return 1;
	// 5. 점수 순서대로 정렬하기
	//	return score.compareTo(o.score);
		
	// 6. 점수 역순으로 정렬하기
		return o.score.compareTo(score);
	}
		
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public Person(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public Person(String name, int age, Double score) {
		super();
		this.name = name;
		this.age = age;
		this.score = score;
	}
	
	
   
   
   
}
