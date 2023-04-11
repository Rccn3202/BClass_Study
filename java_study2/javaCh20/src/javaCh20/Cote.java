package javaCh20;

public class Cote {

	public static void main(String[] args) {

		int n=64; int k=6;
		int answer =0;
		int y=n/10;
		answer = (n*12000) + ((k-y)*2000) ;
		
		 System.out.println(answer);
		
		}
	}

//10	3	124,000
//64	6	768,000
//n을 나눌까
//n/10 = y
//(n*12000) + ((k-y)*2000)
//for(int t=1;t==5; t++) {
//if(10*t<=n && n<10*(t+1)) { return n*12000 + k*2000};
//else {return n*12000+(k-t)*2000};
