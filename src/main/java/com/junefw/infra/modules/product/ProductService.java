package com.junefw.infra.modules.product;

import java.util.List;

public interface ProductService {
	
	public List<Product> selectList() throws Exception; 
	public List<Product> selectList2(ProductVo vo) throws Exception; 
	
}