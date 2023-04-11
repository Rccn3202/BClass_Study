package javaCh20;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserInsertEx {

	public static void main(String[] args) {
		Connection conn = null;

		try {
			//1.����
			Class.forName("oracle.jdbc.OracleDriver");//jar������ java�� �÷��ش�. ppt 20-9 �׸��� a�׸� driver������ ����.�ڹ����� ����Ŭ db�ε����ش�
			//2.������ �����
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "system","1234");//ppt 2��,3������. �����ͺ��̽� �������� �°�
			System.out.println("���� ����");
			//3.����
			String sql="insert into users (userid,username,userpassword, userage, useremail) values(?,?,?,?,?)";
			PreparedStatement pstmt=conn.prepareStatement(sql);// ����� ������ sql������ �ִ´�
			pstmt.setString(1,"winter");
			pstmt.setString(2,"�Ѱܿ�");
			pstmt.setString(3,"12345");
			pstmt.setInt(4,25);
			pstmt.setString(5,"winter@mycompany.com");
			
			int rows=pstmt.executeUpdate();//�����ͺ��̽��� insert���� �����ϴ� ���
			System.out.println("����� �����? "+rows);
			
			sql="insert into boards(bno,btitle,bcontent,bwriter) values(?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,"1001");
			pstmt.setString(2,"����2");
			pstmt.setString(3,"����2");
			pstmt.setString(4,"�ڹ�");
			
			rows=pstmt.executeUpdate();//�����ͺ��̽��� insert���� �����ϴ� ���
			System.out.println("����� �����? "+rows);
			
			pstmt.close();//
			
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

















