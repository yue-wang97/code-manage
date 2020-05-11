package com.SSM.pojo;

public class Proj {
	
		private int proj_id;
		
		private String keyword;
		private String proj_name;
		private String proj_info;
		private String s_date;
		private String manager;
		private User user;
		
		public User getUser() {
			return user;
		}
		public void setUser(User user) {
			this.user = user;
		}
		public int getProj_id() {
			return proj_id;
		}
		public void setProj_id(int projId) {
			proj_id = projId;
		}
		public String getkeyword() {
			return keyword;
		}
		public void setkeyword(String keyword) {
			this.keyword = keyword;
		}
		
		public String getproj_name() {
			return proj_name;
		}
		public void setproj_name(String proj_name) {
			this.proj_name = proj_name;
		}
		public String getproj_info() {
			return proj_info;
		}
		public void setproj_info(String proj_info) {
			this.proj_info = proj_info;
		}
		public String gets_date() {
			return s_date;
		}
		public void sets_date(String s_date) {
			this.s_date = s_date;
		}
		public String getmanager() {
			return manager;
		}
		public void setmanager(String manager) {
			this.manager = manager;
		}
		

}
