package com.SSM.mapper;

import java.util.List;

import com.SSM.pojo.User;

public interface UserMapper {
	// ����ȫ���û�
	List<User> queryAllUsers();

	// ����û�
	void addUser(User user);

	// �����������û�
	List<User> queryUserByItems(User user);

	// ɾ���û�
	void deletUser(User user);

	// �޸��û�
	void alterUser(User user);
}
