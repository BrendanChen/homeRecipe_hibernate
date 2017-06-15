package com.cookWayCode.model;

import java.util.List;

public class CookWayCodeServiceImpl implements CookWayCodeService {

	private CookWayDAO_interface dao;

	public CookWayCodeServiceImpl() {
		super();

		dao = new CookWayDAO();

	}

	public List<CookWayCodeVO> getAll() {
		return dao.getAll();
	}
}
