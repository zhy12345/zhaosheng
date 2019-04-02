/**
 * 
 */
package cn.java.entity;

import java.io.Serializable;

/**
 * @ClassName: PlanProvince.java
 * Description:
 * Date：2018年12月13日-下午5:18:28
 * @author zhy
 */
public class PlanProvince implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3250603862554163218L;

	private Integer id;
	
	private Integer planId;
	
	private String provice;
	
	private Integer proviceNum;
	
	private String families; //科类

	private String major; 
	
	private String fileName;

	public PlanProvince() {
		super();
	}

	public PlanProvince(String provice, Integer proviceNum, String families, String major, String fileName) {
		super();
		this.provice = provice;
		this.proviceNum = proviceNum;
		this.families = families;
		this.major = major;
		this.fileName = fileName;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPlanId() {
		return planId;
	}

	public void setPlanId(Integer planId) {
		this.planId = planId;
	}

	public String getProvice() {
		return provice;
	}

	public void setProvice(String provice) {
		this.provice = provice;
	}

	public Integer getProviceNum() {
		return proviceNum;
	}

	public void setProviceNum(Integer proviceNum) {
		this.proviceNum = proviceNum;
	}

	public String getFamilies() {
		return families;
	}

	public void setFamilies(String families) {
		this.families = families;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	@Override
	public String toString() {
		return "PlanProvince [id=" + id + ", planId=" + planId + ", provice=" + provice + ", proviceNum=" + proviceNum
				+ ", families=" + families + ", major=" + major + ", fileName=" + fileName + "]";
	}
	
	
	
}
