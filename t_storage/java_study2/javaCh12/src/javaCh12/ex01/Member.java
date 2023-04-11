package javaCh12.ex01;


public class Member {
  private String id;

	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public Member(String id) {
		super();
		this.id = id;
	}

	@Override
	public boolean equals(Object obj) {
		if( obj instanceof Member) {
			Member m = ( Member )obj;
			if( id.equals(m.id)) return true;
		}
		return false;
	}
  
	@Override
	public int hashCode() {
		return id.hashCode();
	} 
  
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "멤버 클래스의 참조변수를 출력할 때 자동으로 붙은 메소드임 "  +  id ;
	}
}
