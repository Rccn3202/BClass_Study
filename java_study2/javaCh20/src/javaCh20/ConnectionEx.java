package javaCh20;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionEx {

	public static void main(String[] args) {
		Connection conn = null;

		try {
			Class.forName("oracle.jdbc.OracleDriver");//jar파일을 java에 올려준다. ppt 20-9 그림에 a그림 driver까지의 과정.자바한테 오라클 db로딩해준다

			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe", "system","1234");//ppt 2번,3번과정. 데이터베이스 직전까지 온것
			System.out.println("연결 성공");
		} catch (ClassNotFoundException | SQLException e) {
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

















