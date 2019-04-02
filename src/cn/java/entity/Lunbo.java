package cn.java.entity;

public class Lunbo {
    private Integer id;

    private String photodetail;

    private Integer orders;

    private String photopath;

    private String addtime;

    private String spare;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPhotodetail() {
        return photodetail;
    }

    public void setPhotodetail(String photodetail) {
        this.photodetail = photodetail;
    }

    public Integer getOrders() {
        return orders;
    }

    public void setOrders(Integer orders) {
        this.orders = orders;
    }

    public String getPhotopath() {
        return photopath;
    }

    public void setPhotopath(String photopath) {
        this.photopath = photopath;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public String getSpare() {
        return spare;
    }

    public void setSpare(String spare) {
        this.spare = spare;
    }

	@Override
	public String toString() {
		return "Lunbo [id=" + id + ", photodetail=" + photodetail + ", orders=" + orders + ", photopath=" + photopath
				+ ", addtime=" + addtime + ", spare=" + spare + "]";
	}
    
}