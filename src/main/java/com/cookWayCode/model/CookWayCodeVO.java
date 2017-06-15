package com.cookWayCode.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cook_way_code")
public class CookWayCodeVO {
	
	@Id
	@Column(name="cook_way_no")
	private String cookWayNo;
	
	@Column(name="cook_way_name")
	private String cookWayName;

	public CookWayCodeVO(String cookWayNo, String cookWayName) {
		super();
		this.cookWayNo = cookWayNo;
		this.cookWayName = cookWayName;
	}

	public CookWayCodeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getCookWayNo() {
		return cookWayNo;
	}

	public void setCookWayNo(String cookWayNo) {
		this.cookWayNo = cookWayNo;
	}

	public String getCookWayName() {
		return cookWayName;
	}

	public void setCookWayName(String cookWayName) {
		this.cookWayName = cookWayName;
	}
}
