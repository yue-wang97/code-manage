package com.SSM.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.SSM.mapper.ProjMapper;
import com.SSM.pojo.Proj;
import com.SSM.service.ProjService;

public class ProjServiceImp implements ProjService {
	
	//创建projmapper接口对象
	@Autowired
	private ProjMapper projMapper;

	public List<Proj> queryAllProjs() {
		// TODO Auto-generated method stub
		return projMapper.queryAllProjs();
	}

	public void addProj(Proj proj) {
		// TODO Auto-generated method stub
		projMapper.addProj(proj);
	}
}
