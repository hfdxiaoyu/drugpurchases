package com.drug.po;
/**
 * 药品实体类
 * @author 13069
 *
 */

public class Medicin {
	private int medid;//药品编号
	private String medname;//药品名字
	private String medspe;//药品剂量
	private String medprince;//药品单价
	private String medpro;//药品生产企业
	private String medsdata;//采购时间
	private int medval;//有效期
	private Person persons;//关联人员表
	private Purchase purchases;//关联采购表
	private int meduse;//使用状态（0使用，1未使用）
	public int getMedid() {
		return medid;
	}
	public void setMedid(int medid) {
		this.medid = medid;
	}
	public String getMedname() {
		return medname;
	}
	public void setMedname(String medname) {
		this.medname = medname;
	}
	public String getMedspe() {
		return medspe;
	}
	public void setMedspe(String medspe) {
		this.medspe = medspe;
	}
	public String getMedprince() {
		return medprince;
	}
	public void setMedprince(String medprince) {
		this.medprince = medprince;
	}
	public String getMedpro() {
		return medpro;
	}
	public void setMedpro(String medpro) {
		this.medpro = medpro;
	}
	public String getMedsdata() {
		return medsdata;
	}
	public void setMedsdata(String medsdata) {
		this.medsdata = medsdata;
	}
	public int getMedval() {
		return medval;
	}
	public void setMedval(int medval) {
		this.medval = medval;
	}
	public Person getPersons() {
		return persons;
	}
	public void setPersons(Person persons) {
		this.persons = persons;
	}
	public Purchase getPurchases() {
		return purchases;
	}
	public void setPurchases(Purchase purchases) {
		this.purchases = purchases;
	}
	public int getMeduse() {
		return meduse;
	}
	public void setMeduse(int meduse) {
		this.meduse = meduse;
	}
	@Override
	public String toString() {
		return "Medicin [medid=" + medid + ", medname=" + medname + ", medspe=" + medspe + ", medprince=" + medprince
				+ ", medpro=" + medpro + ", medsdata=" + medsdata + ", medval=" + medval + ", persons=" + persons
				+ ", purchases=" + purchases + ", meduse=" + meduse + "]";
	}
	
	
	
}
