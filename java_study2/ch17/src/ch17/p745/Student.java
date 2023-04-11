package ch17.p745;



public class Student implements Comparable<Student> {
   private String name;
   private int score;
	public Student(String name, int score) {
		super();
		this.name = name;
		this.score = score;
	}
	public String getName() {
		return name;
	}
	public int getScore() {
		return score;
	}
   
	@Override
	public int compareTo(Student o) {
		//return name.compareTo(o.name); //이름 순(오름차순)으로 정렬하기 
		//이름 역순(내림차순)으로 출력하기
		return o.name.compareTo(name);
		
		//return  Integer.compare(score, o.score);
	} 
   
}
