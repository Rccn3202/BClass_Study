package javaCh20;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionEx {

	public static void main(String[] args) {
		Connection conn = null;

		try {
			Class.forName("oracle.jdbc.OracleDriver");//jar������ java�� �÷��ش�. ppt 20-9 �׸��� a�׸� driver������ ����.�ڹ����� ����Ŭ db�ε����ش�

			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "system","1234");//ppt 2��,3������. �����ͺ��̽� �������� �°�
			System.out.println("���� ����");
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} //JDBC Driver ���. ������ �����
		finally {	//�����ϴٰ� ��� ������ ���� �ݾƶ�
			if(conn !=null) {}
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}

















