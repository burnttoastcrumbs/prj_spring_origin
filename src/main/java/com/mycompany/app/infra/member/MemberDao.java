package com.mycompany.app.infra.code.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.util.List;

@Repository
// =DAO임
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.member.MemberMapper";
	
	
	
	
	
	
	public List<Member> selectList(MemberVo vo){
		List<Member> rt= sqlSession.selectList(namespace + ".selectList", vo); 
		return rt;
//		return sqlSession.selectList(namespace + ".selectList", vo); 
		}
	
	
	
	
	
//	public List<CodeGroup> selectList(){ 
//		return sqlSession.selectList(namespace + ".selectList", ""); 
	public Member selectOne(MemberVo vo) {
		Member code = sqlSession.selectOne(namespace + ".selectOne", vo); 
		return code;
	}
	
	
	
	
	

	
	public int update(Member dto) {return sqlSession.update(namespace + ".update", dto); }
	
	
	
	public int delete(Member dto) {return sqlSession.delete(namespace + ".delete", dto);}


	public int insert(Member dto) {return sqlSession.insert(namespace + ".insert", dto);}
	
	public int uelete(Member dto) {return sqlSession.update(namespace + ".uelete", dto);}
	
	
	}
