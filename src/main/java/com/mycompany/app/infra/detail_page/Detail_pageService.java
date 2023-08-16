package com.mycompany.app.infra.detail_page;

import java.util.List;

public interface Detail_pageService {
	
	public int selectOneCount(Detail_pageVo vo);
	
	public List<Detail_page>selectList(Detail_pageVo vo);
	
	public Detail_page selectOne(Detail_pageVo vo);
	
	public int update(Detail_page dto);
	
	public int delete(Detail_page dto);
	
	public int insert(Detail_page dto);
	
	public List<Detail_page> weekbest(Detail_pageVo vo);
	
	public List<Detail_page> weekpopular(Detail_pageVo vo);
	
	public List<Detail_page> weekrecommend(Detail_pageVo vo);
	
	public List<Detail_page> hanapack(Detail_pageVo vo);
	
	public List<Detail_page> mine(Detail_pageVo vo);
	
	public List<Detail_page> mainTaiwan(Detail_pageVo vo);
	
	public List<Detail_page> mainJapan(Detail_pageVo vo);

	public List<Detail_page> mainEurope(Detail_pageVo vo);
	
	public List<Detail_page> mainNew(Detail_pageVo vo);
	
	public List<Detail_page> mainAmerica(Detail_pageVo vo);
	
	public List<Detail_page> mainChina(Detail_pageVo vo);

	public List<Detail_page> mainBusan(Detail_pageVo vo);

	public Detail_page weekbestmiddle(Detail_pageVo vo);

	public List<Detail_page> middleList(Detail_pageVo vo);

	public List<Detail_page> nationList(Detail_pageVo vo);

	public Detail_page detail(Detail_pageVo vo);

	public Detail_page purchase(Detail_pageVo vo);

	public List<Detail_page> slide(Detail_pageVo vo);

	public List<Detail_page> cruise(Detail_pageVo vo);

	public List<Detail_page> japan(Detail_pageVo vo);

	public List<Detail_page> mongolia(Detail_pageVo vo);

	public List<Detail_page> hongkong(Detail_pageVo vo);

	public List<Detail_page> europe(Detail_pageVo vo);

	public List<Detail_page> asia(Detail_pageVo vo);

	public List<Detail_page> america(Detail_pageVo vo);

	public List<Detail_page> pacific(Detail_pageVo vo);

	public List<Detail_page> oceania(Detail_pageVo vo);

	public List<Detail_page> country(Detail_pageVo vo);

	public Detail_page country_name(Detail_pageVo vo);

	//	public int uelete(Order dto);

	
}
