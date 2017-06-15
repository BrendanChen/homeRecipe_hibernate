package com.kindCode.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "RCP_KIND_CODE")
public class KindCodeVO {

	@Id
	@Column(name = "kind_no")
	private String kindNo;

	@Column(name = "kind_name")
	private String kindName;
	
	public KindCodeVO(String kindNo, String kindName) {
		super();
		this.kindNo = kindNo;
		this.kindName = kindName;
	}

	public KindCodeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getKindNo() {
		return kindNo;
	}

	public void setKindNo(String kindNo) {
		this.kindNo = kindNo;
	}

	public String getKindName() {
		return kindName;
	}

	public void setKindName(String kindName) {
		this.kindName = kindName;
	}

}
