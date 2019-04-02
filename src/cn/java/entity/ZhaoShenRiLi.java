package cn.java.entity;

import java.util.Date;

public class ZhaoShenRiLi {
    private Integer id;

    private String subject;

    private Date addtime;

    private String author;

    private Integer clicknum;

    private Integer bianhao;

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

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Integer getClicknum() {
        return clicknum;
    }

    public void setClicknum(Integer clicknum) {
        this.clicknum = clicknum;
    }

    public Integer getBianhao() {
        return bianhao;
    }

    public void setBianhao(Integer bianhao) {
        this.bianhao = bianhao;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

	@Override
	public String toString() {
		return "ZhaoShenRiLi [id=" + id + ", subject=" + subject + ", addtime=" + addtime + ", author=" + author
				+ ", clicknum=" + clicknum + ", bianhao=" + bianhao + ", content=" + content + "]";
	}
}