package ch17.p761;

public class Student1 {
String grade;
String name;
String gender;
int score;
public String getGrade() {
	return grade;
}
public void setGrade(String grade) {
	this.grade = grade;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public int getScore() {
	return score;
}
public void setScore(int score) {
	this.score = score;
}
public Student1(String grade, String name, String gender, int score) {
	super();
	this.grade = grade;
	this.name = name;
	this.gender = gender;
	this.score = score;
}


}
