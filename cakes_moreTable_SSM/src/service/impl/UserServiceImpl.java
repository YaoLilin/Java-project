package service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import mapper.UserMapper;
import pojo.User;
import service.UserService;

public class UserServiceImpl implements UserService{
@Autowired
UserMapper UserMapper;

@Override
public void addUser(User user) {
	// TODO �Զ����ɵķ������
	
}

@Override
public int updateUser(User user) {
	// TODO �Զ����ɵķ������
	return 0;
}

@Override
public int deleteUser(int id) {
	// TODO �Զ����ɵķ������
	return 0;
}

@Override
public User get() {
	// TODO �Զ����ɵķ������
	return null;
}

	
}
