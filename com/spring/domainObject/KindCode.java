package com.spring.domainObject;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Transient;

@Embeddable
public class KindCode {
	
	@Column(name="kind_no")
	private String kindNo;
	
	@Transient
	private String kindName;
	
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
	
	public String getLabel(){
		
		return kindNo  + "-" + kindName;
		
	}
	public KindCode(String kindNo, String kindName) {
		super();
		this.kindNo = kindNo;
		this.kindName = kindName;
	}
	public KindCode() {
		super();
		// TODO Auto-generated constructor stub
	}
}
