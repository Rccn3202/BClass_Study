package javaBasic1

import java.util.Scanner;

public class homework_23016 {

	public static void main(String[] args) {
		
//		//����1. ���� ������ 50�� �Է��ϰ� 25�̻��̸� "����Ʈ���" �ƴϸ� "����Ʈ ����� �ƴմϴ�"��� ����ϱ�
//		//���ں��� int, ���׿����� �̿�
//		int var1 = 50; //���ں����� 50 �Է�
//		System.out.println((var1>=25)? "Eligible for point payment":"Ineligible for point payment");
//		//������ ���
////		int n=50;
////		if(n>=25)
////			System.out.println("efp");
////		else
////			System.out.println("ine");
////		
//		
//		
//		//����2. ������ ������ "�ڹ�"��� �Է��ϰ� �ڹٰ� �ƴϸ� "B����,C�����Դϴ�." �ڹ��̸� "A�����Դϴ�"��� ����ϱ�
//		//������ ���� �Է�, ���׿����� �̿�, ����� ���
//		String var="java";
//		System.out.println(var.equals("java")? "A Class":"BnC Class");
//		//������ ���
////		String word="java"
////				if(word.equals("java"))
////					System.out.println("a");
////				else
////					System.out.println("b,c");
//		
//		//����3. ���� 2���� �Է� �޾Ƽ� ū ���ڸ� ����ϱ� ���׿����� ����ϱ�
//		//���ں��� int, Scanner Ŭ������ �ֿܼ� �Է�, ���׿����� �̿�
//		int num1,num2; //���� ���� num1,num2 ����
//		Scanner q3 = new Scanner(System.in); //�ֿܼ��� ���� �Է� ���� q3��ü ����
//		
//		System.out.println("write first number ");
//		num1 = q3.nextInt(); //q3 ��ü�� �Է¹��� ���ڸ� num1�� ����
//		System.out.println("write second number ");
//		num2 = q3.nextInt();
//		System.out.printf("%d ",(num1>num2)? num1:num2); //(���׿�����)%d(������)�� ��Ÿ����, num1>num2? ������ : ���� �� ���
//
//		
//		System.out.println(" "); //�̰� �׳� ����3�� ����4 �� �и��Ϸ��� ����
//		//������ ���
////		String word="java"
//////				if(word.equals("java"))
//////				System.out.println("a");
//////			else
//////				System.out.println("b,c");
////				String result = (word.equals("java"))? "a:b,c";
////		System.out.println(result);
//		
////		Scanner sc=new Scanner(System.in)
////				System.out.print("num1-->");
////		number1=sc.nextInt();
////		System.out.print("num2--->");
////		int number3=sc.nextInt();
////				
////		int maxNumber=(number1>=number2) ? number1:number2;
////		System.out.println(maxNumber);
//		
//		//����4. ����3���� �Է¹޾Ƽ� ���� ���ڸ� ����ϱ� ���׿����� ����ϱ�
//		//���ں��� int, *int result1�� �߰��� �����ؼ� �̿�*, ���׿�����
//		int num3,num4,num5; //���� ���� ����
//		int result1; //1�� ��
//		
//		Scanner q4 = new Scanner(System.in); //�ֿܼ��� ���� �Է� ���� sc��ü ����
//		
//		System.out.println("write first number ");
//		num3 = q4.nextInt(); //sc ��ü�� �Է¹��� ���ڸ� num1�� ����
//		System.out.println("write second number ");
//		num4 = q4.nextInt();
//		System.out.println("wirte third number ");
//		num5 = q4.nextInt();
//
//		result1 = (num3>num4)? num3:num4; //n3�� n4 �� �� ����
//		int result2 = (num5>result1)? num5:result1; //result1�� num5 ��, ����
//		System.out.println(result2); //��� ���
//		
		//������ ���
//		Scanner sc=new Scanner(System.in);
//				
//		System.out.print("num1-->");
//		number1=sc.nextInt();
//		System.out.print("num2--->");
//		number2=sc.nextInt();
//		System.out.print("num3--->");
//		int number3=sc.nextInt();
//				
//		maxNumber=(number1>=number2) ? number1:number2;
//		maxNumber =(maxNumber>=number3) ? maxNumber:number3;
//		System.out.println(maxNumber);

		
		////���� ����3���� �Է¹޾Ƽ� �߰� ���ڸ� ����ϱ� /
		//maxNumber MinNumber �Ѵ� �ƴϸ� �߰� ����
		Scanner sc=new Scanner(System.in);
		
				
				System.out.print("num1-->");
				int number1=sc.nextInt();
				System.out.print("num2--->");
				int number2=sc.nextInt();
				System.out.print("num3--->");
				int number3=sc.nextInt();
				
				
				int maxNumber=(number1>=number2) ? number1:number2;
				maxNumber =(maxNumber>=number3) ? maxNumber:number3;
				System.out.println(maxNumber);
				
				int minNumber=(number1<=number2) ? number1:number2;
				minNumber =(minNumber<=number3) ? minNumber:number3;
				System.out.println(minNumber);
				
				
						
				
		
		
		
		
	}

}
