package com.SSM.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.SSM.mapper.UserMapper;
import com.SSM.pojo.User;
import com.SSM.service.UserService;

public class UserServiceImp implements UserService {
	
	//创建usermapper接口对象
	@Autowired
	private UserMapper userMapper;

	public List<User> queryAllUsers() {
		// TODO Auto-generated method stub
		return userMapper.queryAllUsers();
	}

	public void addUser(User user) {
		// TODO Auto-generated method stub
		userMapper.addUser(user);
	}
	public void deletUser(User user) {
		// TODO Auto-generated method stub
		userMapper.deletUser(user);
	}

	public List<User> queryUserByItems(User user) {
		// TODO Auto-generated method stub
		return userMapper.queryUserByItems(user);
	}

	public void alterUser(User user){
		// TODO Auto-generated method stub
		userMapper.alterUser(user);
	}
}
