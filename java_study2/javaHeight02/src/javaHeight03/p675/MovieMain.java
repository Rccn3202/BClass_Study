package javaHeight03.p675;
//����Ŭ������ �ǵ帮�� �ʰ� comparator �̿��ؼ� implements
import java.util.TreeSet;


public class MovieMain {

	public static void main(String[] args) {
		//Ʈ���� �ޱ�
		TreeSet<Movie> movie=new TreeSet<Movie>(new MovieComparator());
		
		movie.add(new Movie("��Ŀ",12));
		movie.add(new Movie("�˶��",25));
		movie.add(new Movie("����",11));
		movie.add(new Movie("��������",30));
		movie.add(new Movie("�����",33));
		

	}

}