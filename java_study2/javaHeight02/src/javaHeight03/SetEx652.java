package javaHeight03;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx652 {
	public static void main(String[] args) {
		
	Set<Shop> shopSet=new HashSet<Shop>();
	shopSet.add(new Shop("�̱��","1234",100));
	shopSet.add(new Shop("���ູ","2345",90));
	shopSet.add(new Shop("�ڼ���","1456",300));
	shopSet.add(new Shop("�����","1234",100));
	shopSet.add(new Shop("�ֱ��","1234",100));
	shopSet.add(new Shop("�̱��","1234",300));
	shopSet.add(new Shop("�̱��","1234",200));
	
	//��ü���
	Iterator<Shop> it2 = shopSet.iterator();
	while(it2.hasNext()) {
		Shop shopadd=it2.next();
		System.out.println(shopadd.getCustname()+" "+shopadd.getCustPhone()+" "+shopadd.getPoint());
	}
	
	//�̸�,��ȭ��ȣ ���ü
	
	//�̸��� ��ȭ��ȣ �Է��ϸ� ����Ʈ ������
	String searchName="���ູ";
	String searchPhone="2345";
	
	it2=shopSet.iterator();
	boolean searchOk=false;
	while(it2.hasNext()) {
		Shop shopadd=it2.next();
		if(shopadd.getCustname().equals(searchName) && shopadd.getCustPhone().equals(searchPhone)) {
			System.out.println(shopadd.getCustPhone());
			searchOk=true;
		}
	}
	if(!searchOk) System.out.println(searchName+", "+searchPhone+" ����");
	
	
	
	
	System.out.println("----------------------------");
	Set<Member> memberSet = new HashSet<Member>();

	
		Set<Animal> animalSet = new HashSet<Animal>();
		animalSet.add(new Animal("������",15));
		animalSet.add(new Animal("������",10));
		animalSet.add(new Animal("�䳢",5));
		animalSet.add(new Animal("��",3));
		animalSet.add(new Animal("������",15));	//������ �ٸ��Ƿ� ����ȴ�
		
		System.out.println("set ũ��"+animalSet.size());
		Iterator<Animal> it = animalSet.iterator();
		while(it.hasNext()) {
			Animal animalAddr=it.next();
			System.out.println(animalAddr.getKind()+ " "+animalAddr.getLifespan());
		}
		
	}

}