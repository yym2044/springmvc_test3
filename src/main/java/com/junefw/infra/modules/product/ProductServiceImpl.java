package com.junefw.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDao dao;

	@Override
	public List<Product> selectList() throws Exception {
		return dao.selectList();
	}

	@Override
	public List<Product> selectList2(ProductVo vo) throws Exception {
		return dao.selectList2(vo);
	}
	
	
}