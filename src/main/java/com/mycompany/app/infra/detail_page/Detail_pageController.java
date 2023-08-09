package com.mycompany.app.infra.detail_page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller 
public class Detail_pageController {
	
	@Autowired
	Detail_pageServiceImpl service;
	
	@RequestMapping("/detail_pageXdmList")
	public String productXdmList(@ModelAttribute("vo") Detail_pageVo vo,Model model) {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Detail_page> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		
		return "xdm/infra/detail_page/detail_pageXdmList";
	}
	
	
	
	@RequestMapping("/detail_pageInsert")
	public String productInsert(Detail_pageVo vo, Model model) {

		Detail_page item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/detail_page/detail_pageInsert";

	}
	
	@RequestMapping("/detail_pageForm")
	public String productForm(Detail_pageVo vo, Model model) {

		Detail_page item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/detail_page/detail_pageForm";

	}
	
	@RequestMapping("/detail_pageDelt")

	public String detail_pageDelt(Detail_page dto) {

		System.out.println("detail_pageDelt");
		service.delete(dto);

		return "redirect:/detail_pageXdmList";

	}
	
	
	@RequestMapping("/detail_pageUpdt")

	public String detail_pageUptd(Detail_page dto) {

		System.out.println("detail_pageUpdt");
		service.update(dto);

		return "redirect:/detail_pageXdmList";

	}
	
	@RequestMapping("/detail_pagesInsert")

	public String detail_pageInsert(Detail_page dto) {

		System.out.println("detail_pageInsert");
		service.insert(dto);

		return "redirect:/detail_pageXdmList";

	}

}
