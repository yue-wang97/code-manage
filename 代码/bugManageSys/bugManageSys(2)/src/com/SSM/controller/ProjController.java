package com.SSM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SSM.pojo.Proj;
import com.SSM.service.ProjService;

@Controller
@RequestMapping("/proj")
public class ProjController {
	
	//创建serviece对象，进行注入
	@Autowired
	ProjService projService;
	
	//检索所有用户对象
	@RequestMapping("queryAllProjs")
	public String queryAllProjs(Model model){
		//调用serviec层的检索方法
		List<Proj>allProjs= projService.queryAllProjs();
		
		//把检索结果集，存放到model中，可以由页面进行引用
		model.addAttribute("Projs", allProjs);
		System.out.println("size:"+allProjs.size());
		//返回逻辑视图名
		return "ProjList";
	}
		//添加项目
		@RequestMapping("addProj")
		public String addProj(Proj proj){
			projService.addProj(proj);
			return "sucess";
		}
	
}
