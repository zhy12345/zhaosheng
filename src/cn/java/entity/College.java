package cn.java.entity;

public class College {
    private Integer id;

    private String collegeName;

    private String collegePhoto;

    private String addTime;

    private String collegeDetail;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCollegeName() {
        return collegeName;
    }

    public void setCollegeName(String collegeName) {
        this.collegeName = collegeName;
    }

    public String getCollegePhoto() {
        return collegePhoto;
    }

    public void setCollegePhoto(String collegePhoto) {
        this.collegePhoto = collegePhoto;
    }

    public String getAddTime() {
        return addTime;
    }

    public void setAddTime(String addTime) {
        this.addTime = addTime;
    }

    public String getCollegeDetail() {
        return collegeDetail;
    }

    public void setCollegeDetail(String collegeDetail) {
        this.collegeDetail = collegeDetail;
    }

	@Override
	public String toString() {
		return "College [id=" + id + ", collegeName=" + collegeName + ", collegePhoto=" + collegePhoto + ", addTime="
				+ addTime + ", collegeDetail=" + collegeDetail + "]";
	}
    
}