package com.junefw.infra.modules.product;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.product.ProductMpp";

	public List<Product> selectList() { return sqlSession.selectList(namespace + ".selectList", "");}
	
	public List<Product> selectList2(ProductVo vo){return sqlSession.selectList(namespace + ".selectList2", vo);}
}