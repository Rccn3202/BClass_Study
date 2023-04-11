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
			//1.연결
			Class.forName("oracle.jdbc.OracleDriver");//jar파일을 java에 올려준다. ppt 20-9 그림에 a그림 driver까지의 과정.자바한테 오라클 db로딩해준다
			//2.쿼리문 만들기
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "system","1234");//ppt 2번,3번과정. 데이터베이스 직전까지 온것
			System.out.println("연결 성공");
			//3.실행
			String sql="update boards set btitle=? ,bcontent=? ,bfilename=?  where bno=?";
				
			PreparedStatement pstmt=conn.prepareStatement(sql);// 연결된 곳으로 sql문장을 넣는다
			pstmt.setString(1,"눈이닷");
			pstmt.setString(2,"눈사람이닷");
			pstmt.setString(3,"snow.jpg");
			pstmt.setBlob(4,new FileInputStream("C:\\webStudyB\\study\\web_study\\image\\10.jpg") );
			pstmt.setInt(5, 6);
			
			int rows=pstmt.executeUpdate();//데이터베이스에 insert문을 실행하는 명령
			System.out.println("수정된 행 수는? "+rows);
			
			pstmt.close();//
			
		} catch (ClassNotFoundException | SQLException | FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} //JDBC Driver 등록. 정해진 양식임
		finally {	//연결하다가 어디서 에러가 나든 닫아라
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

















