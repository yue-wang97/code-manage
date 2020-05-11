package com.SSM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.SSM.pojo.Bug;
import com.SSM.pojo.Proj;
import com.SSM.pojo.User;
import com.SSM.service.BugService;

@Controller
@RequestMapping("/bug")
public class BugController {
	
	//����serviece���󣬽���ע��
	@Autowired
	BugService bugService;
	
	//���������û�����
	@RequestMapping("queryAllBugs")
	public String queryAllBugs(Model model){
		//����serviec��ļ�������
		List<Bug>allBugs= bugService.queryAllBugs();
		
		//�Ѽ������������ŵ�model�У�������ҳ���������
		model.addAttribute("Bugs", allBugs);
		System.out.println("size:"+allBugs.size());
		
		//�����߼���ͼ��
		return "BugList";
		
	}
	//����û�
	@RequestMapping("addBug")
	public String addBug(Bug bug){
		bugService.addBug(bug);
		return "sucess";
	}
	
	
//id����
	@RequestMapping("queryBugByItems")
	public String queryBugByItems(Bug bug,Model model){
		List<Bug>bugs= bugService.queryBugByItems(bug);
		//�ѽ������ŵ�model����ҳ�����
		model.addAttribute("Bugs", bugs);
		System.out.println("size:"+bugs.size());
		return "buginfo";
	}
	
//PROJ_id����
	@RequestMapping("queryBugByP")
	public String queryBugByP(Proj proj,Model model){
		List<Bug>bugs= bugService.queryBugByP(proj);
		//�ѽ������ŵ�model����ҳ�����
		model.addAttribute("Bugs", bugs);
		System.out.println("size:"+bugs.size());
		return "Pbuginfo";
	}
	//user_id����
	@RequestMapping("queryBugByU")
	public String queryBugByU(User user,Model model){
		List<Bug>bugs= bugService.queryBugByU(user);
		//�ѽ������ŵ�model����ҳ�����
		model.addAttribute("Bugs", bugs);
		System.out.println("size:"+bugs.size());
		return "Ubuginfo";
	}
	//ɾ������
	@RequestMapping("deletBug")
	public String deletBug(Bug bug){
		//System.out.println("id:"+bug.getBug_id());
		bugService.deletBug(bug);
		return "sucess";
	}
	
	
	//ͳ����������
	@RequestMapping("countbugs")
	public String countbugs(Model model){
		//����serviec��ļ�������
		List<Bug>allBugs= bugService.countbugs();
		
		//�Ѽ������������ŵ�model�У�������ҳ���������
		model.addAttribute("Bugs", allBugs);
		System.out.println("size:"+allBugs.size());
		//�����߼���ͼ��
		return "countBug";
		
	}
}
