package com.junefw.infra.modules.member;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
//	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.junefw.infra.modules.member.MemberMpp";

	public List<Member> selectList(){ 
		return sqlSession.selectList(namespace + ".selectList", "");
	}
	
	public List<Member> selectListCode() {return sqlSession.selectList(namespace + ".selectListCode", ""); }
	
	public int insertMember(Member dto){ return sqlSession.insert(namespace + ".insertMember", dto); }
	public int insertMemberEmail(Member dto) {return sqlSession.insert(namespace + ".insertMemberEmail", dto);}
	public int insertMemberAddress(Member dto) {return sqlSession.insert(namespace + ".insertMemberAddress", dto);}
	
	public Member selectOne(MemberVo vo) {return sqlSession.selectOne(namespace + ".selectOne", vo);}
	
}