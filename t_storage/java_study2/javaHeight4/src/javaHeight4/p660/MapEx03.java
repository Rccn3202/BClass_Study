package javaHeight4.p660;

import java.util.Hashtable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MapEx03 {

	public static void main(String[] args) {

		
		  Map<String, Data2> teacherMap = new Hashtable<String, Data2>();
          
		  School school1 = new School("������", new Data2("3-1", 30));
		  School school2 = new School("ȫ�浿", new Data2("2-2", 27));
		  School school3 = new School("�̼���", new Data2("1-1", 25));
		  
		  teacherMap.put(  school1.getTeacherName()  ,  school1.getData2() );
		  teacherMap.put(  school2.getTeacherName()  ,  school2.getData2() );
		  teacherMap.put(  school3.getTeacherName()  ,  school3.getData2() );
		  
		  //������ �̸��� ��� �ּ���
		  // Ǯ�� �������̸��� Ű���̹Ƿ� Ű���� �����ϸ� �ȴ�
		  Set<String> keys = teacherMap.keySet();
		  
		  Iterator<String> it=keys.iterator();
		  while( it.hasNext() ) {
			  System.out.println( it.next() );
		  }
		  
		  //�б� ������ �ο�����?
		  System.out.println( teacherMap.size() );
		  
		  //������ ���� �б� �ο� ����ϱ�
		  it = keys.iterator();
		  while( it.hasNext() ) {
			  String addr = it.next();
			  Data2 mapValue = teacherMap.get(  addr ); //
			  System.out.println( "������ �̸� : " + addr);
			  System.out.println( " �г� �� : " + mapValue.getGradeBan() );
			  System.out.println( " �б��ο��� : " + mapValue.getCnt() );
		  }
	}

}