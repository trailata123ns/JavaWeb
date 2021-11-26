package com.devpro.shop14.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.devpro.shop14.entities.ContactEntity;
import com.devpro.shop14.entities.UserEntity;

@Service
public class UserService extends BaseService<UserEntity>{

	@Override
	protected Class<UserEntity> clazz() {
		// TODO Auto-generated method stub
		return UserEntity.class;
	}
	
	public UserEntity loadUserByUserName(String userName) {
		String sql = "select * from tbl_users u where u.username = '"+ userName +"'";
		List<UserEntity> users= this.executeNativeSql(sql, -1);
		if(users == null || users.size() <=0) {
			return null;
		}
		return users.get(0);
	}
	@Transactional
	public UserEntity save(UserEntity user) {
		//Có đẩy avatar lên không
		
		return super.saveOrUpdate(user);
	}

}
