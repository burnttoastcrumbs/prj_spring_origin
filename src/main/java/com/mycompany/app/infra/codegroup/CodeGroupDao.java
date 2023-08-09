package com.mycompany.app.infra.codegroup;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.util.List;

@Repository
// =DAO임
public class CodeGroupDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.codegroup.CodeGroupMapper";
	
	
	
	
	
	
	public List<CodeGroup> selectList(CodeGroupVo vo){
		List<CodeGroup> codegroup= sqlSession.selectList(namespace + ".selectList", vo); 
		return codegroup;
//		return sqlSession.selectList(namespace + ".selectList", vo); 
		}
	
	
	
	
	
//	public List<CodeGroup> selectList(){ 
//		return sqlSession.selectList(namespace + ".selectList", ""); 
	public CodeGroup selectOne(CodeGroupVo vo) {
		CodeGroup codeGroup = sqlSession.selectOne(namespace + ".selectOne", vo); 
		return codeGroup;
	}
	
	
	
	
	

	
	public int update(CodeGroup dto) {return sqlSession.update(namespace + ".update", dto); }
	
	
	
	public int delete(CodeGroup dto) {return sqlSession.delete(namespace + ".delete", dto);}


	public int insert(CodeGroup dto) {return sqlSession.insert(namespace + ".insert", dto);}
	
	public int uelete(CodeGroup dto) {return sqlSession.update(namespace + ".uelete", dto);}
	
	public int selectOneCount(CodeGroupVo vo){ return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	}
