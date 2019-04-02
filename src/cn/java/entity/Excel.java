package cn.java.entity;

public class Excel {
    private Integer id;

    private String filename;

    private String filesign;

    private String filepath;

    private String addtime;

    private Integer downloadnum;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFilename() {
        return filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getFilesign() {
        return filesign;
    }

    public void setFilesign(String filesign) {
        this.filesign = filesign;
    }

    public String getFilepath() {
        return filepath;
    }

    public void setFilepath(String filepath) {
        this.filepath = filepath;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }

    public Integer getDownloadnum() {
        return downloadnum;
    }

    public void setDownloadnum(Integer downloadnum) {
        this.downloadnum = downloadnum;
    }
}