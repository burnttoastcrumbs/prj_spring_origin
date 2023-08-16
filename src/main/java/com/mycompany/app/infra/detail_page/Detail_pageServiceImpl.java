package com.mycompany.app.infra.detail_page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Detail_pageServiceImpl implements Detail_pageService{

	@Autowired
	Detail_pageDao dao;
	
	@Override
	public int selectOneCount(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Detail_page> selectList(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Detail_page selectOne(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Detail_page dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Detail_page dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(Detail_page dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public List<Detail_page> weekbest(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.weekbest(vo);
//		return dao.weekbest(dao 함수 이름)(vo);
		
	}

	@Override
	public List<Detail_page> weekpopular(Detail_pageVo vo) {
		return dao.weekpopular(vo);
	}

	@Override
	public List<Detail_page> weekrecommend(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.weekrecommend(vo);
	}

	@Override
	public List<Detail_page> hanapack(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.hanapack(vo);
	}

	@Override
	public List<Detail_page> mine(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.mine(vo);
	}

	@Override
	public List<Detail_page> mainTaiwan(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.mainTaiwan(vo);
	}

	@Override
	public List<Detail_page> mainJapan(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.mainJapan(vo);
	}

	@Override
	public List<Detail_page> mainEurope(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.mainEurope(vo);
	}

	@Override
	public List<Detail_page> mainNew(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.mainNew(vo);
	}

	@Override
	public List<Detail_page> mainAmerica(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.mainAmerica(vo);
	}

	@Override
	public List<Detail_page> mainChina(Detail_pageVo vo) {
		// TODO Auto-generated method stub
		return dao.mainChina(vo);
	}

	@Override
	public List<Detail_page> mainBusan(Detail_pageVo vo) {
		return dao.mainBusan(vo);
	}

	@Override
	public Detail_page weekbestmiddle(Detail_pageVo vo) {
		return dao.weekbestmiddle(vo);
	}

	@Override
	public List<Detail_page> middleList(Detail_pageVo vo) {
		return dao.middleList(vo);
	}

	@Override
	public List<Detail_page> nationList(Detail_pageVo vo) {
		return dao.nationList(vo);
	}

	@Override
	public Detail_page detail(Detail_pageVo vo) {
		return dao.detail(vo);
	}

	@Override
	public Detail_page purchase(Detail_pageVo vo) {
		return dao.purchase(vo);
	}

	@Override
	public List<Detail_page> slide(Detail_pageVo vo) {
		return dao.slide(vo);
	}

	@Override
	public List<Detail_page> cruise(Detail_pageVo vo) {
		return dao.cruise(vo);
	}

	@Override
	public List<Detail_page> japan(Detail_pageVo vo) {
		return dao.japan(vo);
	}

	@Override
	public List<Detail_page> mongolia(Detail_pageVo vo) {
		return dao.mongolia(vo);
	}

	@Override
	public List<Detail_page> hongkong(Detail_pageVo vo) {
		return dao.hongkong(vo);
	}

	@Override
	public List<Detail_page> europe(Detail_pageVo vo) {
		return dao.europe(vo);
	}

	@Override
	public List<Detail_page> asia(Detail_pageVo vo) {
		return dao.asia(vo);
	}

	@Override
	public List<Detail_page> america(Detail_pageVo vo) {
		return dao.america(vo);
	}

	@Override
	public List<Detail_page> pacific(Detail_pageVo vo) {
		return dao.pacific(vo);
	}

	@Override
	public List<Detail_page> oceania(Detail_pageVo vo) {
		return dao.oceania(vo);
	}

	@Override
	public List<Detail_page> country(Detail_pageVo vo) {
		return dao.country(vo);
	}

	@Override
	public Detail_page country_name(Detail_pageVo vo) {
		return dao.country_name(vo);
	}


//	@Override
//	public List<Detail_page> middleList(Detail_pageVo vo) {
//		return dao.middleList(vo);
//	}


}
