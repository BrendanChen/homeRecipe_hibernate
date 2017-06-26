package com.spring.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="STEP")
public class StepVO {
	
	@Id
	@Column(name="step_no")
	private String stepNo;
	
	@Column(name="rcp_seq")
	private String rcpSeq;
	
	@Column(name="create_dt")
	private Date createDt;
	
	@Column(name="detail")
	private String detail;
	
	@Column(name="photo")
	private String photo;
	
	
	public StepVO() {
		super();
	}
	

	public StepVO(String stepNo, String rcpSeq, Date createDt, String detail, String photo) {
		super();
		this.stepNo = stepNo;
		this.rcpSeq = rcpSeq;
		this.createDt = createDt;
		this.detail = detail;
		this.photo = photo;
	}

	public String getStepNo() {
		return stepNo;
	}

	public void setStepNo(String stepNo) {
		this.stepNo = stepNo;
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

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}
}
