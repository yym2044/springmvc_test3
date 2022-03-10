package com.junefw.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList() throws Exception; 
	public List<Member> selectListCode() throws Exception;
	public int insertMember(Member dto) throws Exception;
	public int insertMemberEmail(Member dto) throws Exception;
	public int insertMemberAddress(Member dto) throws Exception;
	public Member selectOne(MemberVo vo) throws Exception;
}