package com.SSM.service;

import java.util.List;

import com.SSM.pojo.Proj;


public interface ProjService {

	//����ȫ����Ŀ
	List<Proj>queryAllProjs();
	
	//���proj
	void addProj(Proj proj);
}
