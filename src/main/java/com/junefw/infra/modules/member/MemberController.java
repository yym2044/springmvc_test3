package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
//	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
	public String memberList(Model model) throws Exception {


		List<Member> list = service.selectList();
		model.addAttribute("list", list);
		
//		model.addAttribute("list", service.selectList());  위 두줄 대신 이렇게도 가능

		return "member/memberList";
	}
	
	@RequestMapping(value = "/member/memberView")
	public String memberView(Model model, MemberVo vo) throws Exception {


		Member rt = service.selectOne(vo);
				
		model.addAttribute("rt", rt);
		

		return "member/memberView";
	}
	
	@RequestMapping(value = "/member/memberForm")
	public String memberForm(Model model) throws Exception {
		
		//멤버수 가져오기 -> ${fn:length(list2)+1}로 다음 ifmmSeq값을 얻음
		List<Member> list2 = service.selectList();
		model.addAttribute("list2", list2);
		
		//코드값 가져오기
		List<Member> list = service.selectListCode();
		model.addAttribute("list", list);
		
		return "member/memberForm";
	}
	
	@RequestMapping(value = "/member/memberInst")
	public String memberInst(Model model, Member dto) throws Exception {

		// 입력을 작동시킨다.
		service.insertMember(dto);
		service.insertMemberEmail(dto);
		service.insertMemberAddress(dto);
		
		return "";
	}
	
}