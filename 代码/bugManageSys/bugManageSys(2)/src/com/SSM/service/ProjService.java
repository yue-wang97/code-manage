package com.SSM.service;

import java.util.List;

import com.SSM.pojo.Proj;


public interface ProjService {

	//检索全部项目
	List<Proj>queryAllProjs();
	
	//添加proj
	void addProj(Proj proj);
}
