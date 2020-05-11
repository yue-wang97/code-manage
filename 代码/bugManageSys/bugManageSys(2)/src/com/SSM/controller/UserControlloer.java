package com.SSM.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.SSM.pojo.User;
import com.SSM.service.UserService;

@Controller
@RequestMapping("/user")
public class UserControlloer {
	
	//����serviece���󣬽���ע��
	@Autowired
	UserService userService;
	
	//���������û�����
	@RequestMapping("queryAllUsers")
	public String queryAllUsers(Model model){
		//����serviec��ļ�������
		List<User>allUsers= userService.queryAllUsers();
		
		//�Ѽ������������ŵ�model�У�������ҳ���������
		model.addAttribute("Users", allUsers);
		System.out.println("size:"+allUsers.size());
		//�����߼���ͼ��
		return "UserList";
		
	}
	//����û�
	@RequestMapping("addUser")
	public String addUser(User user){
		userService.addUser(user);
		return "sucess";
	}
	
	@RequestMapping("queryUserByItems")
	public String queryUserByItems(User user,Model model){
		List<User>users= userService.queryUserByItems(user);
		//�ѽ������ŵ�model����ҳ�����
		model.addAttribute("Users", users);
		return "queryUser";
	}

	@RequestMapping("deletUser")
	public String deletUser(User user){
		//System.out.println("id:"+user.getUser_id());
		userService.deletUser(user);
		return "sucess";
	}
	
	@RequestMapping("alterUser")
	public String alterUser(User user){
		userService.alterUser(user);
		return "sucess";
	}
}
