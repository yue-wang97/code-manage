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
	
	//����serviece���󣬽���ע��
	@Autowired
	ProjService projService;
	
	//���������û�����
	@RequestMapping("queryAllProjs")
	public String queryAllProjs(Model model){
		//����serviec��ļ�������
		List<Proj>allProjs= projService.queryAllProjs();
		
		//�Ѽ������������ŵ�model�У�������ҳ���������
		model.addAttribute("Projs", allProjs);
		System.out.println("size:"+allProjs.size());
		//�����߼���ͼ��
		return "ProjList";
	}
		//�����Ŀ
		@RequestMapping("addProj")
		public String addProj(Proj proj){
			projService.addProj(proj);
			return "sucess";
		}
	
}
