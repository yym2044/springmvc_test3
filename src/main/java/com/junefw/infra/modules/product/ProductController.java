package com.junefw.infra.modules.product;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@Autowired
	ProductServiceImpl service;
	
	@RequestMapping(value = "/product/productList")
	public String productList(Model model) throws Exception {
		
		List<Product> list = service.selectList();
		
		model.addAttribute("list", list);
		
		return "product/productList";
	}
	
	
}