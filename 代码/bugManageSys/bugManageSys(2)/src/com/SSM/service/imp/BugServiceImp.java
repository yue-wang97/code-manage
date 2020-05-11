package com.SSM.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.SSM.mapper.BugMapper;

import com.SSM.pojo.Bug;
import com.SSM.pojo.Proj;
import com.SSM.pojo.User;
import com.SSM.service.BugService;

public class BugServiceImp implements BugService {
	
	//创建bugmapper接口对象
	@Autowired
	private BugMapper bugMapper;

	public List<Bug> queryAllBugs() {
		// TODO Auto-generated method stub
		return bugMapper.queryAllBugs();
	}
	
	public List<Bug> countbugs() {
		// TODO Auto-generated method stub
		return bugMapper.countbugs();
	}

	public void addBug(Bug bug) {
		// TODO Auto-generated method stub
		bugMapper.addBug(bug);
	}
	public void deletBug(Bug bug) {
		// TODO Auto-generated method stub
		bugMapper.deletBug(bug);
	}

	public List<Bug> queryBugByItems(Bug bug) {
		// TODO Auto-generated method stub
		return bugMapper.queryBugByItems(bug);
	}
	
	public List<Bug> queryBugByP(Proj proj) {
		// TODO Auto-generated method stub
		return bugMapper.queryBugByP(proj);
	}
	public List<Bug> queryBugByU(User user) {
		// TODO Auto-generated method stub
		return bugMapper.queryBugByU(user);
	}

}
