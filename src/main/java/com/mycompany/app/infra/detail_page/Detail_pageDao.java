package com.mycompany.app.infra.detail_page;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.inject.Inject;
import java.util.List;


@Repository
public class Detail_pageDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.detail_page.Detail_pageMapper";
//	com.kiosk.app.infra.order.OrderMapper에서 만든 쿼리호출!!!!
	
	public int selectOneCount(Detail_pageVo vo){
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
		}
//	'사'검색 : 사과, 사이다. 2개! count~~
	
	
	public List<Detail_page> selectList(Detail_pageVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public Detail_page selectOne(Detail_pageVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
		
	}
//	김철수 검색 : 김철수(seq1임) -> seq 1에 대한 abc 정보가 출력됨
	
	
	
	public List<Detail_page> weekbest(Detail_pageVo vo) {
//		public List<Detail_page> weekbest(..라는 함수를 만들었음. 그 함수의 이름임!)(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".weekbest", vo);
		//namespace + ".weekbest(mapper 아이디)", vo);
	}
	
	public List<Detail_page> weekpopular(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".weekpopular", vo);
	}
	
	public List<Detail_page> weekrecommend(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".weekrecommend", vo);
	}
	
	public List<Detail_page> hanapack(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".hanapack", vo);
	}
	
	public List<Detail_page> mine(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".mine", vo);
	}
	
	public List<Detail_page> mainTaiwan(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".mainTaiwan", vo);
	}
	
	public List<Detail_page> mainJapan(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".mainJapan", vo);
	}
	
	public List<Detail_page> mainEurope(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".mainEurope", vo);
	}
	
	public List<Detail_page> mainNew(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".mainNew", vo);
	}
	
	public List<Detail_page> mainAmerica(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".mainAmerica", vo);
	}
	
	public List<Detail_page> mainChina(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".mainChina", vo);
	}

	public List<Detail_page> mainBusan(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".mainBusan", vo);
	}

	public Detail_page weekbestmiddle(Detail_pageVo vo) {
		return sqlSession.selectOne(namespace + ".weekbestmiddle", vo);
	}

	public List<Detail_page> middleList(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".middleList", vo);
	}


	public Detail_page detail(Detail_pageVo vo) {
		return sqlSession.selectOne(namespace + ".detail", vo);
	}

	public Detail_page purchase(Detail_pageVo vo) {
		return sqlSession.selectOne(namespace + ".purchase", vo);
	}

	public List<Detail_page> slide(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".slide", vo);
	}

	public List<Detail_page> cruise(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".cruise", vo);
	}

	public List<Detail_page> japan(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".japan", vo);
	}

	public List<Detail_page> mongolia(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".mongolia", vo);
	}

	public List<Detail_page> hongkong(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".hongkong", vo);
	}


	public List<Detail_page> europe(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".europe", vo);
	}

	public List<Detail_page> asia(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".asia", vo);
	}

	public List<Detail_page> america(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".america", vo);
	}

	public List<Detail_page> pacific(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".pacific", vo);
	}

	public List<Detail_page> oceania(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".oceania", vo);
	}

	public List<Detail_page> country(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".country", vo);
	}

	public Detail_page country_name(Detail_pageVo vo) {
		return sqlSession.selectOne(namespace + ".country_name", vo);
	}

	public List<Detail_page> nationList(Detail_pageVo vo) {
		return sqlSession.selectList(namespace + ".nationList", vo);
	}
	
	public int update(Detail_page dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int delete(Detail_page dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
	public int insert(Detail_page dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	

	
}




//vo : 데이터의 내용을 제공하는, 보여주는 용도(데이터베이스의 내용을 조회하는 용도)
//dto : crud를 위한 사용자의 정보변경을 위한 기능 (=입력을 받는 용도, 데이터베이스에 개입해서 바꾸는 용도)
