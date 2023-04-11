package javaHeight03.p672;



public class Person implements Comparable<Person> {
	public String name;
	public int age;
	private Double score;//���ð� ������ Ŭ���� ������
	
	public Person(String name, int age, Double score) {
		super();
		this.name = name;
		this.age = age;
		this.score = score;
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

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public Person(String name, int age) {
		this.name = name;
		this.age = age;
	}
	
	@Override

	public int compareTo(Person o) {
		//���̼�
//		if(age<o.age) return -1;
//		else if(age==o.age) return 0;
//		else return 1;
		
		//�̸���
	//	return name.compareTo(o.name);	//���� ���� name�̶� o.name ��String Ŭ������ �ִ� �޼ҵ带 ȣ����. �׷��� �˾Ƽ� 0,-1,1�� ������
		
		//�̸� �������� �ϱ�
		// o.name.compareTo(name);]
		
		//���� �������� ����ϱ�
//		if(o.age<age) return -1;
//		else if(age==o.age) return 0;
//		else return 1;
		
		//���� ������� ����
		//return score.compareTo(o.score);
		//���� �������� �����ϱ�
		return o.score.compareTo(score); 
	}
}
//���� �۽� Ŭ������ ��ĥ �� ���� ��� �۽� Ŭ������ ���ϴ� Ŭ������ ����� ����Ѵ�. comparatable