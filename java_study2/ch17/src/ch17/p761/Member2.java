package ch17.p761;

public class Member2 {
private String name;
private String job;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getJob() {
	return job;
}
public void setJob(String job) {
	this.job = job;
}
public Member2(String name, String job) {
	super();
	this.name = name;
	this.job = job;
}

@Override
	public String toString() {

		return "{name: "+name+"job: "+job+ "}";
	}

}
