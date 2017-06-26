package com.spring.domainObject;

import java.util.ArrayList;

public class IngreList<E> extends ArrayList<E>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String groupName;

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	
}
