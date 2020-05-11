package com.SSM.service;

import java.util.List;

import com.SSM.pojo.Bug;
import com.SSM.pojo.Proj;
import com.SSM.pojo.User;


public interface BugService {
	//检索全部
	List<Bug>queryAllBugs();
	//添加
	void addBug(Bug bug);
	//删除
	void deletBug(Bug bug);
	//按条件检索
	List<Bug>queryBugByItems(Bug bug);
	//按pro_id
	List<Bug>queryBugByP(Proj proj);
	//按user_id
	List<Bug>queryBugByU(User user);

	//count
	List<Bug> countbugs();
}
