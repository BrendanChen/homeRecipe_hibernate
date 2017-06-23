package com.spring.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;


@Entity
@Table(name = "ingredient")
@SequenceGenerator(name="ingreNo", sequenceName="ingredient_seq",allocationSize=1)
public class IngredientVO {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="ingreNo")
	@Column(name="ingre_no")
	private String ingreNo;
	
	@Column(name="rcp_seq")
	private String rcpSeq;
	
	@Column(name="create_dt")
	private Date createDt;
	
	@Column(name="iname")
	private String iName;
	
	@Column(name="quantity")
	private String quantity;
	
	@Column(name="group_no")
	private Integer groupNo;
	
	@Column(name="group_name")
	private String groupName;

	public IngredientVO(String ingreNo, String rcpSeq, Date createDt, String iName, String quantity, Integer groupNo,
			String groupName) {
		super();
		this.ingreNo = ingreNo;
		this.rcpSeq = rcpSeq;
		this.createDt = createDt;
		this.iName = iName;
		this.quantity = quantity;
		this.groupNo = groupNo;
		this.groupName = groupName;
	}

	public IngredientVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getIngreNo() {
		return ingreNo;
	}

	public void setIngreNo(String ingreNo) {
		this.ingreNo = ingreNo;
	}

	public String getRcpSeq() {
		return rcpSeq;
	}

	public void setRcpSeq(String rcpSeq) {
		this.rcpSeq = rcpSeq;
	}

	public Date getCreateDt() {
		return createDt;
	}

	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
	}

	public String getiName() {
		return iName;
	}

	public void setiName(String iName) {
		this.iName = iName;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public Integer getGroupNo() {
		return groupNo;
	}

	public void setGroupNo(Integer groupNo) {
		this.groupNo = groupNo;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
}
