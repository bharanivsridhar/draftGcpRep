package com.resoursetechmapping.bean;

public class ResourceBean {
	private long empId;
	private String firstName;
	private String middleName;
	private String lastName;
	private String listTechnology;
	private String certification;
	private String projects;
	private String applicationWorked;
	 
	public long getEmpId() {
		return empId;
	}
	public void setEmpId(long empId) {
		this.empId = empId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getListTechnology() {
		return listTechnology;
	}
	public void setListTechnology(String listTechnology) {
		this.listTechnology = listTechnology;
	}
	public String getCertification() {
		return certification;
	}
	public void setCertification(String certification) {
		this.certification = certification;
	}
	public String getProjects() {
		return projects;
	}
	public void setProjects(String projects) {
		this.projects = projects;
	}
	public String getApplicationWorked() {
		return applicationWorked;
	}
	public void setApplicationWorked(String applicationWorked) {
		this.applicationWorked = applicationWorked;
	}
	@Override
	public String toString() {
		return "ResourceBean [empId=" + empId + ", firstName=" + firstName + ", middleName=" + middleName
				+ ", lastName=" + lastName + ", listTechnology=" + listTechnology + ", certification=" + certification
				+ ", projects=" + projects + ", applicationWorked=" + applicationWorked + "]";
	}
	 
}
