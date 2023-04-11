package javaCh20;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class BoardUpdateEx {

	public static void main(String[] args) {
		Connection conn = null;

		try {
			//1.����
			Class.forName("oracle.jdbc.OracleDriver");//jar������ java�� �÷��ش�. ppt 20-9 �׸��� a�׸� driver������ ����.�ڹ����� ����Ŭ db�ε����ش�
			//2.������ �����
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "system","1234");//ppt 2��,3������. �����ͺ��̽� �������� �°�
			System.out.println("���� ����");
			//3.����
			String sql="update boards set btitle=? ,bcontent=? ,bfilename=?  where bno=?";
				
			PreparedStatement pstmt=conn.prepareStatement(sql);// ����� ������ sql������ �ִ´�
			pstmt.setString(1,"���̴�");
			pstmt.setString(2,"������̴�");
			pstmt.setString(3,"snow.jpg");
			pstmt.setBlob(4,new FileInputStream("C:\\webStudyB\\study\\web_study\\image\\10.jpg") );
			pstmt.setInt(5, 6);
			
			int rows=pstmt.executeUpdate();//�����ͺ��̽��� insert���� �����ϴ� ���
			System.out.println("������ �� ����? "+rows);
			
			pstmt.close();//
			
		} catch (ClassNotFoundException | SQLException | FileNotFoundException e) {
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

















