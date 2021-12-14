package collection;

public class User {
	private String name;
	private String id;
	private String pw;
	private String phone;
	
	
	
	
	public User(String name, String id, String pw, String phonNumber) {
		this.name = name;
		this.id = id;
		this.pw = pw;
		this.phone = phonNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phonNumber) {
		this.phone = phonNumber;
	}
	@Override
	public String toString() {
		return  id ;
	}
	
	
	
}
