package ch02.sec01;

import java.util.Scanner;

public class VarEx3 {

	public static void main(String[] args) {
		/* �Ʒ��� ���� �Է��մϴ�.
		�̸���==> ȫ�浿
		��������==> 100
		��������==> 80
		��������==> 90
		
		���ȭ��
		
		-------------------------
		���� �б� ����ǥ
		-------------------------
		ȫ�浿 100 80 90 270 90 1��
        -------------------------- */
		
		//Ű���� �Է��ϴ� ��ĳ�� ��ü ���
		
	
		Scanner sc = new Scanner(System.in);
		//�Է��ϱ�
		
	
		
		
		System.out.print("�̸���==>");
		String name = sc.next();
		
		
		System.out.print("����==>");
		int kor = sc.nextInt();
		
		
		System.out.print("����==>");
		int eng = sc.nextInt();
		
		
		System.out.print("����==>");	
		int math = sc.nextInt();
		
		
		
		//�հ� ����ϱ�
		int total =kor+eng+math;
		//System.out.println(total);
		
		//���
		double avg=total/3.0; //���� �Ҽ��� 2���� ǥ�ø� double avg, �� ����-���� ����ϸ� �������� ����. 3�� 3.0���� �ٲ۴�.
		//System.out.printf("%.2f",avg);
		
		
		
		
		System.out.println("-------------------------");
		
		System.out.println("       ���� �б� ����ǥ      ");
		
		System.out.println("-------------------------");
		
		System.out.println(name+ " "+ kor+" "+eng+" "+math+" "+total+" "+avg+" "+"1��");
		System.out.println("-------------------------");
		
		
		
		
		
		
		
		
		
		
		
		//
		
		
	}

}