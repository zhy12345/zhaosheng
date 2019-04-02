package cn.java.entity;

public class Major {
    private Integer id;

    private String subject;

    private String majortype;

    private String name;

    private String author;

    private String addtime;

    private Integer clicknum;

    private String content;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getMajortype() {
        return majortype;
    }

    public void setMajortype(String majortype) {
        this.majortype = majortype;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public Integer getClicknum() {
        return clicknum;
    }

    public void setClicknum(Integer clicknum) {
        this.clicknum = clicknum;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

	/*@Override
	public String toString() {
		return "Major [id=" + id + ", subject=" + subject + ", majortype=" + majortype + ", name=" + name + ", author="
				+ author + ", addtime=" + addtime + ", clicknum=" + clicknum + ", content=" + content + "]";
	}*/
}