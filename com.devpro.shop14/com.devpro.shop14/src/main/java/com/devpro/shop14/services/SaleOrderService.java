package com.devpro.shop14.services;

import org.springframework.stereotype.Service;

import com.devpro.shop14.entities.SaleOrderEntity;

@Service
public class SaleOrderService extends BaseService<SaleOrderEntity>{

	@Override
	protected Class<SaleOrderEntity> clazz() {
		// TODO Auto-generated method stub
		return SaleOrderEntity.class;
	}

}
