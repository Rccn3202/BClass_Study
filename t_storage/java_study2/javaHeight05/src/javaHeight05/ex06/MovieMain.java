package javaHeight05.ex06;

import java.util.TreeSet;

public class MovieMain {

	public static void main(String[] args) {
		
		TreeSet<Movie> movieTree = new TreeSet<Movie>(  new MovieComparator()   );
		
		movieTree.add( new Movie( "��Ŀ", 12405));
		movieTree.add( new Movie( "�˶��", 25100));
		movieTree.add( new Movie( "�����Ǻ����", 11478));
		movieTree.add( new Movie( "��������", 30100));
		movieTree.add( new Movie( "�����", 33542));
		
       
	}

}