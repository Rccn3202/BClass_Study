package javaBasic1;

public class OperandEx1 {

	public static void main(String[] args) {
		// ������1 ++a : ���� ���� ������  a--: ���� ���� ������
		int a=10;
		//11���
		//System.out.println(a+1); //���1
		//a = a+1;
		//System.out.println(a); //���2
		//a++; //���3
		//++a;
		//System.out.println(a); 
		
		
		//9 ���
//		a--;
//		System.out.println(a);

		int b,c;
		//��: b������ 11�� �־ ������ּ���
	//	b = 11; //���1
	//	b = a+1; //���2 
//		a++; //���3
//		b = a;
//		System.out.println(b);
		b= ++a; //a=a+1 b=a  : 1���Ѵ�->B���
		b= a++; //b=a a=a+1 : bcnffur ->1���Ѵ�
		System.out.println(a+ " " + b);
		
		int d=20;
		System.out.println(++d); // d=d+1 �� ���
		
		//������2 (a=a+1 a+=1) (a=a+2 a+=2)   (a=a+b a+=b) (a=a-10 a-=10)  (a = a*b a*=b)
		int e=10;
		// e = e - 8;
		e-=8;
		System.out.println(e);
		
		//������3
		//������ 25/5=5 25/4 = 6.25
		//int v1=25;
		//int v2=4;
		//System.out.println(v1/v2); //6 ���´� ����/����=�����ϱ�
		//�Ҽ��� ������ �Ϸ���?
		//���� 1. �ڷ����� �Ǽ��� �����
		//���� 2. �ڷ����� ������ �״�� �ϰ� 2500/4=625,625/100 �Ѵ�
		
		//~���� �غ�~
//		double v3=25; //���� �Ǽ��� �����ϱ�? 
//		double v4=4;
//		System.out.println(v3/v4);
//		
		//���� 1.
		int v1=25;
		int v2=4;
		System.out.println(v1/(double) v2);
		//���� 2.
		v1 *=100; //v1 = v1 * 100;
		System.out.println((v1/(double)v2)/100);
		
		// >> ���� ����Ʈ ������ << ���� ����Ʈ ������ >>> ���� ����Ʈ ������   2�� ����� ���ϰų� ���� �� ����ϴ� ������
		int v3 = 0b1011; //0b(������) 1010 : 10���� 11
		// v3 = v3 >> 2; //�������� / 2^2    
		// v3 = v3 << 3 ; //�������� *2^3
		System.out.println(v3); //1011�� �������� 2��Ʈ �δ�. 101100 -> 10���� 44(��������*10^2) 
		
		//���� ������ > �ʰ�  >=�̻� ==���� !=�����ʴ�
		int v4=100;
		System.out.println(v4 != 200);   
		
		//��Ʈ ������ �̿� - ����, ���ںо߿��� �ַ� ���
		//int v5 = 0b01011; //1 true 0 false
		//int v6 = 0b10111; //
		//System.out.println( v5 & v6 ); //���� 0�� �Ʒ� 1 ������ ��-> 00011
		
		int v5 = 0b01011; //1 true 0 false
		int v6 = 0b10111; //
		System.out.println( Integer.toBinaryString(v5 & v6)); 
		System.out.println( Integer.toBinaryString(v5 | v6)); //11111 
		System.out.println( Integer.toBinaryString(v5 ^ v6)); //11100 xor(�����ϴ�) ���� �Ʒ��� 01,10 �̸� 1 / 11 00�̸� 0 ���´�

		//���Կ����� = : �캯�� �ִ� ���� �º�(������ ���;� ��)�� ��������
		int v7 =200;
		// int 200 = v7; // ���� :���ڴ� ������ �� �� ����
		
		int v8 = v2+200;
		// int v2 + 200 =v8; //����
		
		//���׿�����   (����) ? ��:����
		int v9=10;
		System.out.println( (v9==10) ? "�հ�" : "���հ�");
		int v99=15;
		System.out.println( (v99==10) ? "�հ�" : "���հ�");
		
		String type="A";
		String result;
		result = (type.equals("A")) ? "VIP�����Դϴ�" : "�Ϲݰ����Դϴ�" ;
		System.out.println(result);	

		// ���� : ���� ������ 50�� �Է��ϰ� 25�̻��̸� "����Ʈ���" �ƴϸ� "����Ʈ ����� �ƴմϴ�"��� ���
		
		int v10=50;
		if
		System.out.println( (v10>=25) ? "����Ʈ���" : "����Ʈ ����� �ƴմϴ�");
		
		
		
		// ���� : ������ ������ "�ڹ�"��� �Է��ϰ� �ڹٰ� �ƴϸ� "B����,C�����Դϴ�." �ڹ��̸� "A���� �Դϴ�" ��� ��� 
		String type1="�ڹ�";
		String result1;
		result = (type1.equals("�ڹ�")) ? "A���� �Դϴ�" : "B����,C�����Դϴ�." ;
		System.out.println(result);	

	}

}