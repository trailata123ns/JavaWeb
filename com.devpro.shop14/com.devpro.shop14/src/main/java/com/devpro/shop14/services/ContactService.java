package com.devpro.shop14.services;

import java.io.File;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.devpro.shop14.dto.Constants;
import com.devpro.shop14.entities.ContactEntity;

@Service
public class ContactService extends BaseService<ContactEntity> implements Constants{

	@Override
	protected Class<ContactEntity> clazz() {
		// TODO Auto-generated method stub
		return ContactEntity.class;
	}

	@Transactional
	public ContactEntity save(ContactEntity contact) {
		//Có đẩy avatar lên không
		
		return super.saveOrUpdate(contact);
	}
}
