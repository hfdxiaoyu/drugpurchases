package com.drug.po;
/**
 * 人员表
 * @author 13069
 *
 */
public class Person {
	private int perid;//账号
	private String perpassword;//密码
	private String pername;//名字
	private String perphon;//电话号码
	private String peraddr;//地址
	private int pertype; //账号类型（1管理员，0普通账户）
	
	public int getPerid() {
		return perid;
	}
	public void setPerid(int perid) {
		this.perid = perid;
	}
	public String getPerpassword() {
		return perpassword;
	}
	public void setPerpassword(String perpassword) {
		this.perpassword = perpassword;
	}
	public String getPername() {
		return pername;
	}
	public void setPername(String pername) {
		this.pername = pername;
	}
	public String getPerphon() {
		return perphon;
	}
	public void setPerphon(String perphon) {
		this.perphon = perphon;
	}
	public String getPeraddr() {
		return peraddr;
	}
	public void setPeraddr(String peraddr) {
		this.peraddr = peraddr;
	}
	public int getPertype() {
		return pertype;
	}
	public void setPertype(int pertype) {
		this.pertype = pertype;
	}
	@Override
	public String toString() {
		return "Person [perid=" + perid + ", perpassword=" + perpassword + ", pername=" + pername + ", perphon="
				+ perphon + ", peraddr=" + peraddr + ", pertype=" + pertype + "]";
	}
	
	
	
}
