package com.spring.domainObject;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Transient;

@Embeddable
public class CookWayCode {
	
	@Column(name="cook_way_no")
	private String cookWayNo;
	
	@Transient
	private String cookWayName;
	
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
	
	public String getLabel(){
		
		return cookWayNo  + "-" + cookWayName;
		
	}
}
