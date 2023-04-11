package ch17.p745;

import java.util.Arrays;
import java.util.List;



public class ReductionEx {

	public static void main(String[] args) {
		List<Student> studentList 
		   = Arrays.asList(new Student("ȫ�浿", 92), new Student("�ſ��", 95), new Student("���ڹ�", 88));
		
		//���1) �հ豸�ϱ�
		int sumResult = studentList.stream().mapToInt( s -> s.getScore() ).sum();
		System.out.println(sumResult);
		
		//���2)
		sumResult = studentList.stream().map(Student::getScore) // 92 95 88
		                         .reduce(0, (a,b) -> a+b );
		
		System.out.println(sumResult);
		
		// ���� ���ؼ� - 20 �غ���
		sumResult = studentList.stream().map(Student::getScore) // 92 95 88
                .reduce(0, (a,b) -> a+b-20 ); // 0+92-20  72+95-20 147+88-20 

        System.out.println(sumResult);
        //��� �ִ� ��Ʈ���� ���� �ڵ� ����
        List<Student> studentList1  = Arrays.asList();
        sumResult = studentList1.stream().map(Student::getScore) // ������ ����
                .reduce(0, (a,b) -> a+b-20 ); // �⺻�� 0 ��µ�

        System.out.println(sumResult);

	}

}
