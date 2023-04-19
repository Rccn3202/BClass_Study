package org.zerock.web;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class) //아래 클래스 실행하는 방법은 Junit4로 한다.
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"}) //아래 클래스의 컨테이너(빈) 위치는 여기에 있다.
public class MyBatisTest {

	@Inject
	private SqlSessionFactory sqlFactory;
	
	@Test
	public void testFactory() {
		System.out.println(sqlFactory+"~~~");
	}

	@Test
	public void testSession() { //테스트코드
		SqlSession session=sqlFactory.openSession();
		System.out.println(session+"!!!");
	}
	
}









