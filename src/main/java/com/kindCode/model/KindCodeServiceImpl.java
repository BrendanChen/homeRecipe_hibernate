package com.kindCode.model;

import java.util.List;

public class KindCodeServiceImpl implements KindCodeService{
	
	private KindCodeDAO_interface dao;
	
	
	public KindCodeServiceImpl() {
		
		dao = new KindCodeDAO();
	}

	public List<KindCodeVO> getAll() {
		return dao.getAll();
	}

}
