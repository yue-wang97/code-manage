package com.SSM.mapper;

import java.util.List;


import com.SSM.pojo.Bug;
import com.SSM.pojo.Proj;
import com.SSM.pojo.User;


public interface BugMapper {
	//����ȫ���û�
	List<Bug>queryAllBugs();
	//����û�
	void addBug(Bug bug);
	
	
	//ɾ���û�
	void deletBug(Bug bug);
	
	//�����������û�
	List<Bug> queryBugByItems(Bug bug);
	//
	List<Bug> queryBugByP(Proj proj);
	//
	List<Bug> queryBugByU(User user);
	//total
	List<Bug> countbugs();
	
	

}
