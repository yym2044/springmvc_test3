package com.junefw.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;

	@RequestMapping(value = "/code/codeGroupList")
	public String codeGroupList(Model model) throws Exception {

		List<Code> list = service.selectList();

		model.addAttribute("list", list);

		return "code/codeGroupList";
	}

	@RequestMapping(value = "/code/codeGroupForm")
	public String codeGroupForm() throws Exception {

		return "code/codeGroupForm";
	}

	@RequestMapping(value = "/code/codeGroupInst")
	public String codeGroupInst(Model model, Code dto) throws Exception {

		// 입력이 되어야 함
		service.insert(dto);

		return "";
	}
	
	@RequestMapping(value = "/code/codeGroupView1")
	public String codeGroupView1(Model model, CodeVo vo) throws Exception {
		
		Code rt = service.selectOne(vo);
		
		model.addAttribute("rt", rt);
		
		return "code/codeGroupView1";
	}
	
	
	
	@RequestMapping(value = "/code/codeGroupView2")
	public String codeGroupView2(Model model, CodeVo vo) throws Exception {

		List<Code> list = service.selectList2(vo);

		model.addAttribute("list", list);

		return "code/codeGroupView2";
	}

}