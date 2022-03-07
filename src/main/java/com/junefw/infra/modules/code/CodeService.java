package com.junefw.infra.modules.code;

import java.util.List;

public interface CodeService {
	
	public List<Code> selectList() throws Exception; 
	public int insert(Code dto) throws Exception;
	public Code selectOne(CodeVo vo) throws Exception;
	
	public Code selectOne(Code dto) throws Exception;
	
	public List<Code> selectList2(CodeVo vo) throws Exception;
//	public int update(CodeVo vo) throws Exception;
	public int update(Code dto) throws Exception;
	
//	코드
	public List<Code> selectList_code() throws Exception;
	public int insert_code(Code dto) throws Exception;
	
	public Code selectOne_code(CodeVo vo) throws Exception;
	public Code selectOne_code(Code dto) throws Exception;
	
	public int update_code(Code dto) throws Exception;
}