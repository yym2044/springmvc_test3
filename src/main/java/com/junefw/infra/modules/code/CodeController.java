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

	@RequestMapping(value = "/code/codeGroupEditForm")
	public String codeGroupEditForm(Model model, CodeVo vo) throws Exception {

		Code rt = service.selectOne(vo);

		model.addAttribute("rt", rt);

		return "code/codeGroupEditForm";
	}

//	@RequestMapping(value = "/code/codeGroupUpdt")		// CodeVo.java에 필드 추가
//	public String codeGroupUpdt(Model model, CodeVo vo) throws Exception {
//
//		// 업데이트 하는 구문
//		service.update(vo);
//		
//		// View1을 다시 뿌려주기 위한 구문
//		Code rt = service.selectOne(vo);
//		model.addAttribute("rt", rt);
//
//		return "/code/codeGroupView1";
//	}

	@RequestMapping(value = "/code/codeGroupUpdt") // SelectOne(Code dto) 새로 생성
	public String codeGroupUpdt(Model model, Code dto) throws Exception {

		// 업데이트 하는 구문
		service.update(dto);

		// View1을 다시 뿌려주기 위한 구문
		Code rt = service.selectOne(dto);
		model.addAttribute("rt", rt);

		return "code/codeGroupView1" ;

	}

}