package com.drug.po;
/**
 * 采购表
 * @author 13069
 *
 */

import java.util.Date;

public class Purchase {
	private int proid;//采购id
	private Medicin medicin;//关联药品表
	private String proname;//药品名字
	private String proman;//药品生产企业
	private String prosdata;//生产日期
	private String pronums;//采购数量
	private Date prodate;//采购时间
	private int prostat;//药品使用状态（0未使用，1使用）
	private Person person;//关联人员表，用来查询人员信息
	public int getProid() {
		return proid;
	}
	public void setProid(int proid) {
		this.proid = proid;
	}
	public Medicin getMedicin() {
		return medicin;
	}
	public void setMedicin(Medicin medicin) {
		this.medicin = medicin;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public String getProman() {
		return proman;
	}
	public void setProman(String proman) {
		this.proman = proman;
	}
	public String getProsdata() {
		return prosdata;
	}
	public void setProsdata(String prosdata) {
		this.prosdata = prosdata;
	}
	public String getPronums() {
		return pronums;
	}
	public void setPronums(String pronums) {
		this.pronums = pronums;
	}
	public Date getProdate() {
		return prodate;
	}
	public void setProdate(Date prodate) {
		this.prodate = prodate;
	}
	public int getProstat() {
		return prostat;
	}
	public void setProstat(int prostat) {
		this.prostat = prostat;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	@Override
	public String toString() {
		return "Purchase [proid=" + proid + ", medicin=" + medicin + ", proname=" + proname + ", proman=" + proman
				+ ", prosdata=" + prosdata + ", pronums=" + pronums + ", prodate=" + prodate + ", prostat=" + prostat
				+ ", person=" + person + "]";
	}
	
	
}
