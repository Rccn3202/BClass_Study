package javaBasic1;

import java.util.Scanner;

public class b {
	public static void main(String[] args) {
		////���� ����3���� �Է¹޾Ƽ� �߰� ���ڸ� ����ϱ� 
		
		//���1
		//maxNumber MinNumber �Ѵ� �ƴϸ� �߰� ����
		Scanner sc=new Scanner(System.in);


		System.out.print("num1-->");
		int number1=sc.nextInt();
		System.out.print("num2--->");
		int number2=sc.nextInt();
		System.out.print("num3--->");
		int number3=sc.nextInt();

	
		int maxNumber=(number1>=number2) ? number1:number2; 
		maxNumber =(maxNumber>=number3) ? maxNumber:number3; //�ִ� ����
	
		int minNumber=(number1<=number2) ? number1:number2;
		minNumber =(minNumber<=number3) ? minNumber:number3; //�ּҰ� ����
		
		//����� �� 10 5 20, 5 10 20, 5 20 10
		int midNumber=0;
		if(number1 !=maxNumber && number1!=minNumber)
			midNumber = number1;
		if(number2 !=maxNumber&& number2!=minNumber)
			midNumber =number2;
		if(number3 !=maxNumber && number3!=minNumber)
			midNumber =number3;
		
		System.out.println("Max " + maxNumber);
		System.out.println("Mid " + midNumber);
		System.out.println("Min " + minNumber);
		
		//���2
		System.out.println("����1 �Է�:");
        int e6 = sc.nextInt();
        System.out.println("����2 �Է�:");
        int e7 = sc.nextInt();
        System.out.println("����3 �Է�:");
        int e8 = sc.nextInt();	
        System.out.println((e6>=e7)?((e6>=e8)?((e7>=e8)?e7:e8):e6):((e6>=e8)?e6:((e7>=e8)?e8:e7)));

		//���3 ���׿����� ���
        System.out.print("ù��° ���ڸ� �Է��ϼ��� : ");
		int n1 = sc.nextInt();
		System.out.print("�ι�° ���ڸ� �Է��ϼ��� : ");
		int n2 = sc.nextInt();
		System.out.print("����° ���ڸ� �Է��ϼ��� : ");
		int n3 = sc.nextInt();

		int result1 = (n1 <= n2) ? n1 : n2;
		int min = (result1 <= number3) ? result1 : number3;
		
		int result2 = (n1 >= n2) ? n1 : n2;
		int max = (result2 >= number3) ? result2 : number3;
		int mid = (n1 != min && n1 != max) ? n1 : ((n2 != min && n2 != max) ? n2 : n3);
		
		System.out.println(mid);

		//���4
		Scanner Scr = new Scanner(System.in);
		System.out.print("ù��° ���ڸ� �Է�==>");
		int number6=Scr.nextInt();//   300
		System.out.print("�ι�° ���ڸ� �Է�==>");
		int number7=Scr.nextInt();//	  150
		System.out.print("����° ���ڸ� �Է�==>");
		int number8=Scr.nextInt();//	  250
		
		int middleNumber = (number6>=number7)? number6:number7; //����6�� ����7 �� �� ū���� ����mid
		middleNumber = (number8>=middleNumber)? number6:number8; //����8�� ����mid �� 
		System.out.println(middleNumber);

        
	}

		

	}
						
