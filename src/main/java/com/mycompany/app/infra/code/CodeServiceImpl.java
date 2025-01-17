package com.mycompany.app.infra.code;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;
	@Service
	public class CodeServiceImpl implements CodeService  {  
	
	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) { 
		return dao.selectList(vo);
		
	}
	
	@Override
	public Code selectOne(CodeVo vo) { 
		return dao.selectOne(vo);
		
	}

	@Override
	public int update(Code dto) {
		return dao.update(dto);
	}

	@Override
	public int delete(Code dto) {
		return dao.delete(dto);
	}

	@Override
	public int insert(Code dto) {
		return dao.insert(dto);
	}

	@Override
	public int uelete(Code dto) {return dao.uelete(dto); }
	
	
	
//	for cache
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		Code.cachedCodeArrayList.clear();
		Code.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
	}
	
	public static void clear() throws Exception {
		Code.cachedCodeArrayList.clear();
	}
	
	
	
}