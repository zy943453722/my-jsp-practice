package member_sevlet;

public class Info {
    public String logname;
    public String password;
    public String email;
    public String phone;
    public int age;
    public int sex;
    public String message;
    public Info(){};
    public Info(String l,String pa,String e,String ph,String m,int a,int s)
    {
    	this.logname = l;
    	this.password = pa;
    	this.email = e;
    	this.message = m;
    	this.age = a;
    	this.sex = s;
    	this.phone = ph;
    }
    public Info(String l)
    {
    	this.logname = l;
    }
	public String getLogname() {
		return logname;
	}
	public void setLogname(String logname) {
		this.logname = logname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
    
}
