package com.mycompany.app.infra.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author i7C-31
 *
 */
/**
 * @author i7C-31
 *
 */
/**
 * @author i7C-31
 *
 */
@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;

	@RequestMapping("/memberXdmList")
	public String memberXdmList(@ModelAttribute("vo") MemberVo vo, Model model) {
		System.out.println("controller: vo.getShOption(): " + vo.getShOption());
		System.out.println("controller: vo.getShKeyword(): " + vo.getShKeyword());

		vo.setShKeyword(vo.getShKeyword() ==null? "번":vo.getShKeyword());
		List<Member> list = service.selectList(vo);

		System.out.println("list.size(): " + list.size());

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("list", list);
		/* model.addAttribute("vo", vo); */
		/* 상단의 @ModelAttribute("vo")와 똑같음 */
		return "/xdm/infra/member/memberXdmList";
	}

	
		
	   @RequestMapping("/memberListForm") public String memberListForm(MemberVo vo,
	   Model model) {
	   
	   Member item = service.selectOne(vo);
	   
	   
	   model.addAttribute("item", item);
	   
	   return "/xdm/infra/member/memberListForm";
	   
	   }
	 
	 
	
	
	
	/*
	 * @RequestMapping("/memberListFormInsert") public String
	 * memberListFormInsert(MemberVo vo, Model model) {
	 * 
	 * Member item = service.selectOne(vo);
	 * 
	 * 
	 * model.addAttribute("item", item);
	 * 
	 * return "/xdm/infra/member/memberListFormInsert";
	 * 
	 * }
	 */
	 
	

	@RequestMapping("/memberUpdt")
	public String codeUpdt(Member dto) {

		System.out.println("memberUpdt");
		service.update(dto);

		return "redirect:/memberXdmList";

	}
	

	@RequestMapping("/memberDelt")

	public String codeDelt(Member dto) {

		System.out.println("memberDelt");
		service.delete(dto);

		return "redirect:/memberXdmList";

	}

	@RequestMapping("/memberInsert")

	public String codeInsert(Member dto) {

		System.out.println("memberInsert");
		service.insert(dto);

		return "redirect:/main";

	}

	@RequestMapping("/memberUelete")

	public String codeUelete(Member dto) {

		System.out.println("memberUelete");
		service.uelete(dto);

		return "redirect:/memberXdmList";

	}
	
	/*---------------------------------------------------------------------------------------------------------------------- */
	
	
	
	
	
	
	
	

}