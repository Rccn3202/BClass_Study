package javaHeight05.ex12;

import java.util.ArrayList;
import java.util.List;

public class BoardDao {
   //List<Board> list = dao.getBoardList();  // Board 자료를 List에 넣어주고 List의 주소를 리턴해줌
   //연습문제 7번 풀이
	List<Board> getBoardList(){
		List<Board> list1 = new ArrayList<Board>();
		list1.add(new Board("제목1", "내용1"));
		list1.add(new Board("제목2", "내용2"));
		list1.add(new Board("제목3", "내용2"));
		return list1;
	}
}
