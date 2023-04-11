package javaHeight03.p675;
//무비클래스는 건드리지 않고 comparator 이용해서 implements
import java.util.TreeSet;


public class MovieMain {

	public static void main(String[] args) {
		//트리에 달기
		TreeSet<Movie> movie=new TreeSet<Movie>(new MovieComparator());
		
		movie.add(new Movie("조커",12));
		movie.add(new Movie("알라딘",25));
		movie.add(new Movie("남산",11));
		movie.add(new Movie("극한직업",30));
		movie.add(new Movie("기생충",33));
		

	}

}
