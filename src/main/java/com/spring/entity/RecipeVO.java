package com.spring.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import com.spring.domainObject.CookWayCode;
import com.spring.domainObject.KindCode;

@Entity
@Table(name = "recipe")
@SequenceGenerator(name="recipeSeq", sequenceName="recipe_seq",allocationSize=1)
public class RecipeVO {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="recipeSeq")
	@Column(name="rcp_seq")
	private Integer rcpSeq;
	
	@Column(name="create_dt")
	private Date createDt;
	
	@Column(name="rname")
	private String rName;

	@Column(name="kind_no")
	private String kindNo;
	
	@Column(name="cook_way_no")
	private String cookWayNo;
	
	@Column(name="cook_time")
	private Integer cookTime;

	private Integer serving;

	private String note;

	private String trick;
	
	private byte[] photo;

	public RecipeVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public RecipeVO(Integer rcpSeq, Date createDt, String rName, String kindNo, String cookWayNo, Integer cookTime,
			Integer serving, String note, String trick, byte[] photo) {
		super();
		this.rcpSeq = rcpSeq;
		this.createDt = createDt;
		this.rName = rName;
		this.kindNo = kindNo;
		this.cookWayNo = cookWayNo;
		this.cookTime = cookTime;
		this.serving = serving;
		this.note = note;
		this.trick = trick;
		this.photo = photo;
	}


	public Integer getRcpSeq() {
		return rcpSeq;
	}

	public void setRcpSeq(Integer rcpSeq) {
		this.rcpSeq = rcpSeq;
	}

	public Date getCreateDt() {
		return createDt;
	}

	public void setCreateDt(Date createDt) {
		this.createDt = createDt;
	}

	public String getrName() {
		return rName;
	}

	public void setrName(String rName) {
		this.rName = rName;
	}

	public String getKindNo() {
		return kindNo;
	}

	public void setKindNo(String kindNo) {
		this.kindNo = kindNo;
	}

	public String getCookWayNo() {
		return cookWayNo;
	}

	public void setCookWayNo(String cookWayNo) {
		this.cookWayNo = cookWayNo;
	}

	public Integer getCookTime() {
		return cookTime;
	}

	public void setCookTime(Integer cookTime) {
		this.cookTime = cookTime;
	}

	public Integer getServing() {
		return serving;
	}

	public void setServing(Integer serving) {
		this.serving = serving;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getTrick() {
		return trick;
	}

	public void setTrick(String trick) {
		this.trick = trick;
	}


	public byte[] getPhoto() {
		return photo;
	}


	public void setPhoto(byte[] photo) {
		this.photo = photo;
	}
	
}
