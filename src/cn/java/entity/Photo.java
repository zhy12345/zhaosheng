package cn.java.entity;

public class Photo {
    private Integer id;

    private String sign;

    private String photopath;

    private String yuanxi;

    private String addtime;

    private String author;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSign() {
        return sign;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public String getPhotopath() {
        return photopath;
    }

    public void setPhotopath(String photopath) {
        this.photopath = photopath;
    }

    public String getYuanxi() {
        return yuanxi;
    }

    public void setYuanxi(String yuanxi) {
        this.yuanxi = yuanxi;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

	@Override
	public String toString() {
		return "Photo [id=" + id + ", sign=" + sign + ", photopath=" + photopath + ", yuanxi=" + yuanxi + ", addtime="
				+ addtime + ", author=" + author + "]";
	}
    
}