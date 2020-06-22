package com.drug.po;
/**
 * 退货表
 * @author 13069
 *
 */
public class Salse {
	private int salid;//退货编号
	private Medicin medicin;//关联药品表
	private float salprice;//药品价格
	private int salnums;//退货数量
	private String salbacase;//退货原因
	private Person person;//关联人员表
	private int salstat;//退货状态（1未退，0已退）
	private float salmoney;//退货金额
	public int getSalid() {
		return salid;
	}
	public void setSalid(int salid) {
		this.salid = salid;
	}
	public Medicin getMedicin() {
		return medicin;
	}
	public void setMedicin(Medicin medicin) {
		this.medicin = medicin;
	}
	public float getSalprice() {
		return salprice;
	}
	public void setSalprice(float salprice) {
		this.salprice = salprice;
	}
	public int getSalnums() {
		return salnums;
	}
	public void setSalnums(int salnums) {
		this.salnums = salnums;
	}
	public String getSalbacase() {
		return salbacase;
	}
	public void setSalbacase(String salbacase) {
		this.salbacase = salbacase;
	}
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public int getSalstat() {
		return salstat;
	}
	public void setSalstat(int salstat) {
		this.salstat = salstat;
	}
	public float getSalmoney() {
		return salmoney;
	}
	public void setSalmoney(float salmoney) {
		this.salmoney = salmoney;
	}
	@Override
	public String toString() {
		return "Salse [salid=" + salid + ", medicin=" + medicin + ", salprice=" + salprice + ", salnums=" + salnums
				+ ", salbacase=" + salbacase + ", person=" + person + ", salstat=" + salstat + ", salmoney=" + salmoney
				+ "]";
	}
	
}
