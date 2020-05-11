package com.SSM.mapper;

import java.util.List;


import com.SSM.pojo.Bug;
import com.SSM.pojo.Proj;
import com.SSM.pojo.User;


public interface BugMapper {
	//检索全部用户
	List<Bug>queryAllBugs();
	//添加用户
	void addBug(Bug bug);
	
	
	//删除用户
	void deletBug(Bug bug);
	
	//按条件检索用户
	List<Bug> queryBugByItems(Bug bug);
	//
	List<Bug> queryBugByP(Proj proj);
	//
	List<Bug> queryBugByU(User user);
	//total
	List<Bug> countbugs();
	
	

}
