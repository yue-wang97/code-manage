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
	
	//创建serviece对象，进行注入
	@Autowired
	BugService bugService;
	
	//检索所有用户对象
	@RequestMapping("queryAllBugs")
	public String queryAllBugs(Model model){
		//调用serviec层的检索方法
		List<Bug>allBugs= bugService.queryAllBugs();
		
		//把检索结果集，存放到model中，可以由页面进行引用
		model.addAttribute("Bugs", allBugs);
		System.out.println("size:"+allBugs.size());
		
		//返回逻辑视图名
		return "BugList";
		
	}
	//添加用户
	@RequestMapping("addBug")
	public String addBug(Bug bug){
		bugService.addBug(bug);
		return "sucess";
	}
	
	
//id检索
	@RequestMapping("queryBugByItems")
	public String queryBugByItems(Bug bug,Model model){
		List<Bug>bugs= bugService.queryBugByItems(bug);
		//把结果集存放到model，由页面调用
		model.addAttribute("Bugs", bugs);
		System.out.println("size:"+bugs.size());
		return "buginfo";
	}
	
//PROJ_id检索
	@RequestMapping("queryBugByP")
	public String queryBugByP(Proj proj,Model model){
		List<Bug>bugs= bugService.queryBugByP(proj);
		//把结果集存放到model，由页面调用
		model.addAttribute("Bugs", bugs);
		System.out.println("size:"+bugs.size());
		return "Pbuginfo";
	}
	//user_id检索
	@RequestMapping("queryBugByU")
	public String queryBugByU(User user,Model model){
		List<Bug>bugs= bugService.queryBugByU(user);
		//把结果集存放到model，由页面调用
		model.addAttribute("Bugs", bugs);
		System.out.println("size:"+bugs.size());
		return "Ubuginfo";
	}
	//删除问题
	@RequestMapping("deletBug")
	public String deletBug(Bug bug){
		//System.out.println("id:"+bug.getBug_id());
		bugService.deletBug(bug);
		return "sucess";
	}
	
	
	//统计问题数量
	@RequestMapping("countbugs")
	public String countbugs(Model model){
		//调用serviec层的检索方法
		List<Bug>allBugs= bugService.countbugs();
		
		//把检索结果集，存放到model中，可以由页面进行引用
		model.addAttribute("Bugs", allBugs);
		System.out.println("size:"+allBugs.size());
		//返回逻辑视图名
		return "countBug";
		
	}
}
