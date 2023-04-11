package javaHeight05.ex07;

public class Movie2 implements Comparable<Movie2> {
	   private String movieName;
	   private Integer ticketing;
	   
		   @Override
		public int compareTo(Movie2 o) {
			return movieName.compareTo(o.movieName);
		}
	   
		public String getMovieName() {
			return movieName;
		}
		public void setMovieName(String movieName) {
			this.movieName = movieName;
		}
		public Integer getTicketing() {
			return ticketing;
		}
		public void setTicketing(Integer ticketing) {
			this.ticketing = ticketing;
		}
		public Movie2(String movieName, Integer ticketing) {
			super();
			this.movieName = movieName;
			this.ticketing = ticketing;
		}
}
