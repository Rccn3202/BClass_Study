package javaHeight01.p640;

import java.util.ArrayList;
import java.util.List;

public class CollectionEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList arrayList=new ArrayList(); //ArrayList Ĵü����,����Ʈ
		List list1=new ArrayList();  //������ ���� ��
		
		int[] n1=new int[3];
		//���� 3�� �־��µ� ���� 2�� �� �־��־����
		//���: 5�� �迭�� ���� ����� �Ű��־���Ѵ�
		//�迭 ����: �߰��ϰų� �߰��� ����ִ� ��찡 �־ �״�� ������. �޸� ȿ�� ������
		//ArrayList�� �迭�� ���� �����ϱ� ���Ѱ�
		list1.add("a");
		list1.add("B");
		list1.add("c");
		list1.add("d");
		
		System.out.println(list1.get(3));
		System.out.println("����ִ� ����"+list1.size());
		//k��� �ڷ� �ֳ���
		System.out.println(list1.equals("k"));
	}	

}