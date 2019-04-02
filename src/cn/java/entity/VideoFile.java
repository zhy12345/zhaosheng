package cn.java.entity;

public class VideoFile {
    private Integer id;

    private String videoname;

    private String videophoto;

    private String author;

    private String date;

    private String videofrom;

    private Integer checknum;

    private String videopath;

    private String photopath;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVideoname() {
        return videoname;
    }

    public void setVideoname(String videoname) {
        this.videoname = videoname;
    }

    public String getVideophoto() {
        return videophoto;
    }

    public void setVideophoto(String videophoto) {
        this.videophoto = videophoto;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getVideofrom() {
        return videofrom;
    }

    public void setVideofrom(String videofrom) {
        this.videofrom = videofrom;
    }

    public Integer getChecknum() {
        return checknum;
    }

    public void setChecknum(Integer checknum) {
        this.checknum = checknum;
    }

    public String getVideopath() {
        return videopath;
    }

    public void setVideopath(String videopath) {
        this.videopath = videopath;
    }

    public String getPhotopath() {
        return photopath;
    }

    public void setPhotopath(String photopath) {
        this.photopath = photopath;
    }

	@Override
	public String toString() {
		return "VideoFile [id=" + id + ", videoname=" + videoname + ", videophoto=" + videophoto + ", author=" + author
				+ ", date=" + date + ", videofrom=" + videofrom + ", checknum=" + checknum + ", videopath=" + videopath
				+ ", photopath=" + photopath + "]";
	}
    
}