package cn.java.entity;

public class Person {
    private Integer id;

    private String username;

    private String truename;

    private String password;

    private String logintime;

    private Integer admin;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLogintime() {
        return logintime;
    }

    public void setLogintime(String logintime) {
        this.logintime = logintime;
    }

    public Integer getAdmin() {
        return admin;
    }

    public void setAdmin(Integer admin) {
        this.admin = admin;
    }
	@Override
	public String toString() {
		return "Person [id=" + id + ", username=" + username + ", truename=" + truename + ", password=" + password
				+ ", logintime=" + logintime + ", admin=" + admin + "]";
	}
}