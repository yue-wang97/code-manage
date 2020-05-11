package com.SSM.service;

import java.util.List;

import com.SSM.pojo.Bug;
import com.SSM.pojo.Proj;
import com.SSM.pojo.User;


public interface BugService {
	//����ȫ��
	List<Bug>queryAllBugs();
	//���
	void addBug(Bug bug);
	//ɾ��
	void deletBug(Bug bug);
	//����������
	List<Bug>queryBugByItems(Bug bug);
	//��pro_id
	List<Bug>queryBugByP(Proj proj);
	//��user_id
	List<Bug>queryBugByU(User user);

	//count
	List<Bug> countbugs();
}
