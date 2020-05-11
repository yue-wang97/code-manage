package com.SSM.pojo;

public class Bug {
	private Proj proj;
	private int bug_id;
	private String bugname;
	private String maker;
	private User user;
	private Bug_type bug_type;
	private Bug_status bug_status;
	private String solve;
	private String existdate;
	private String solvedate;
	
	public Proj getProj() {
		return proj;
	}
	public void setProj(Proj proj) {
		this.proj = proj;
	}
	
	public int getBug_id() {
		return bug_id;
	}
	public void setBug_id(int bugId) {
		bug_id = bugId;
	}
	public String getBugname() {
		return bugname;
	}
	public void setBugname(String bugname) {
		this.bugname = bugname;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Bug_type getBug_type() {
		return bug_type;
	}
	public void setBug_type(Bug_type bugType) {
		bug_type = bugType;
	}
	public Bug_status getBug_status() {
		return bug_status;
	}
	public void setBug_status(Bug_status bugStatus) {
		bug_status = bugStatus;
	}
	public String getSolve() {
		return solve;
	}
	public void setSolve(String solve) {
		this.solve = solve;
	}
	public String getExistdate() {
		return existdate;
	}
	public void setExistdate(String existdate) {
		this.existdate = existdate;
	}
	public String getSolvedate() {
		return solvedate;
	}
	public void setSolvedate(String solvedate) {
		this.solvedate = solvedate;
	}
	
	
	}
	