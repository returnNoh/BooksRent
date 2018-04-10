package com.member.dao;

import java.sql.Timestamp;

public class MemberDTO {
		private String p_email,p_nic,p_name,p_passwd;
		private int p_num,grade;
		private Timestamp con_time;
		
		public String getP_email() {
			return p_email;
		}
		public void setP_email(String p_email) {
			this.p_email = p_email;
		}
		public String getP_nic() {
			return p_nic;
		}
		public void setP_nic(String p_nic) {
			this.p_nic = p_nic;
		}
		public String getP_name() {
			return p_name;
		}
		public void setP_name(String p_name) {
			this.p_name = p_name;
		}
		public int getP_num() {
			return p_num;
		}
		public void setP_num(int p_num) {
			this.p_num = p_num;
		}
		public String getP_passwd() {
			return p_passwd;
		}
		public void setP_passwd(String p_passwd) {
			this.p_passwd = p_passwd;
		}
		public int getGrade() {
			return grade;
		}
		public void setGrade(int grade) {
			this.grade = grade;
		}
		public Timestamp getCon_time() {
			return con_time;
		}
		public void setCon_time(Timestamp con_time) {
			this.con_time = con_time;
		}
		

}
