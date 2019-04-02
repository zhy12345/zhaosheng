/**
 * 
 */
package cn.java.entity;

import java.util.List;

/**
 * @ClassName: Plan.java
 * Description:
 * Date：2018年12月13日-下午5:15:05
 * @author zhy
 */
public class Plan {
	
	private Integer id;
	
	private String project ;
	
	private String cengCi;
	
	private String major;
	
	private String subject;
	
	private Integer peopleNum;
	
	private String  addtime;
	
	private String years;
	
	public String getYears() {
		return years;
	}

	public void setYears(String years) {
		this.years = years;
	}

	private List<PlanProvince> proviceList;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getCengCi() {
		return cengCi;
	}

	public void setCengCi(String cengCi) {
		this.cengCi = cengCi;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public Integer getPeopleNum() {
		return peopleNum;
	}

	public void setPeopleNum(Integer peopleNum) {
		this.peopleNum = peopleNum;
	}

	public String getAddtime() {
		return addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public List<PlanProvince> getProviceList() {
		return proviceList;
	}

	public void setProviceList(List<PlanProvince> proviceList) {
		this.proviceList = proviceList;
	}

	@Override
	public String toString() {
		return "Plan [id=" + id + ", project=" + project + ", cengCi=" + cengCi + ", major=" + major + ", subject="
				+ subject + ", peopleNum=" + peopleNum + ", addtime=" + addtime + ", years=" + years + ", proviceList="
				+ proviceList + "]";
	}


	
	
}
