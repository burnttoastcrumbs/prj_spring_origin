package com.mycompany.app.infra.codegroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
	@Service
	public class CodeGroupServiceImpl implements CodeGroupService  {  
	
	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) { 
		return dao.selectList(vo);
		
	}
	
	
	
	@Override
	public CodeGroup selectOne(CodeGroupVo vo) { 
		return dao.selectOne(vo);
		
	}

	@Override
	public int update(CodeGroup dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(CodeGroup dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(CodeGroup dto) {
		return dao.insert(dto);
	}

	@Override
	public int uelete(CodeGroup dto) {return dao.uelete(dto); }

	@Override
	public int selectOneCount(CodeGroupVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}
}