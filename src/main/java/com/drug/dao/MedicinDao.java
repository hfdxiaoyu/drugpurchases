package com.drug.dao;

import java.util.List;

import com.drug.po.Medicin;

public interface MedicinDao {
	// 药品列表
	public List<Medicin> selectMedicinList(Medicin medicin);

	// 药品数
	public Integer selectMedicinListCount(Medicin medicin);

	// 删除药品
	public int deleteMedicin(Integer id);

}
