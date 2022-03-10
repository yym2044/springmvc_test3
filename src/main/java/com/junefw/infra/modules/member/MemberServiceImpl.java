package com.junefw.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList() throws Exception {
		return dao.selectList(); 
	}
	
	@Override
	public List<Member> selectListCode() throws Exception {
		return dao.selectListCode();
	}
	
	@Override
	public int insertMember(Member dto) throws Exception {
		return dao.insertMember(dto);
	}
	@Override
	public int insertMemberEmail(Member dto) throws Exception {
		return dao.insertMemberEmail(dto);
	}
	@Override
	public int insertMemberAddress(Member dto) throws Exception {
		return dao.insertMemberAddress(dto);
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	

}