package com.SSM.mapper;

import java.util.List;

import com.SSM.pojo.Proj;

public interface ProjMapper {
	//����ȫ����Ŀ
	List<Proj>queryAllProjs();
	
	// �����Ŀ
	void addProj(Proj proj);
	
	

}
