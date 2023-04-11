package javaHeight05.ex10;

import java.util.LinkedList;
import java.util.Queue;

public class QueueEx10 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
             Queue<Message>  mQ=new LinkedList<Message>();
             
             mQ.offer(new Message("sendMail", "홍길동"));
             mQ.offer(new Message("sendSMS", "신용권"));
             mQ.offer(new Message("sendKakoTalk", "김자바"));
             mQ.offer(new Message("sendFacebook", "이경수"));
             
             while( !mQ.isEmpty() ) {
            	 Message m = mQ.poll();
               	 System.out.println(  m.getTo() +"에게 "+  m.getCommand().substring(4) + "를 보냅니다 ");// 10시 10분까지 쉬기
               	 //String 클래스의 메소드 중에서 몇번인덱스 이후로 출력하기라는 것 있습니다.
             }
	}
   
}
