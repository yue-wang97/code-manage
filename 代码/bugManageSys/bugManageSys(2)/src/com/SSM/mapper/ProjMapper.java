package com.SSM.mapper;

import java.util.List;

import com.SSM.pojo.Proj;

public interface ProjMapper {
	//检索全部项目
	List<Proj>queryAllProjs();
	
	// 添加项目
	void addProj(Proj proj);
	
	

}
