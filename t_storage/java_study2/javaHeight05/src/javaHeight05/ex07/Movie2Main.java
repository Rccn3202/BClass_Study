package javaHeight05.ex07;

import java.util.TreeSet;

import javaHeight05.ex06.Movie;

public class Movie2Main {

	public static void main(String[] args) {
		
		TreeSet<Movie2> movie2Tree = new TreeSet<Movie2>();

		movie2Tree.add( new Movie2( "조커", 12405));
		movie2Tree.add( new Movie2( "알라딘", 25100));
		movie2Tree.add( new Movie2( "남산의부장들", 11478));
		movie2Tree.add( new Movie2( "극한직업", 30100));
		movie2Tree.add( new Movie2( "기생충", 33542));
		
		
		
	}
}
