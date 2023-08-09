package com.mycompany.app.infra.code;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;

	@RequestMapping("/codeXdmList")
	public String codeXdmList(@ModelAttribute("vo") CodeVo vo, Model model) {
		System.out.println("controller: vo.getShOption(): " + vo.getShOption());
		System.out.println("controller: vo.getShKeyword(): " + vo.getShKeyword());

		vo.setShKeyword(vo.getShKeyword() ==null? "번":vo.getShKeyword());
		List<Code> list = service.selectList(vo);

		System.out.println("list.size(): " + list.size());

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("list", list);
		/* model.addAttribute("vo", vo); */
		/* 상단의 @ModelAttribute("vo")와 똑같음 */
		return "/xdm/infra/code/codeXdmList";
	}

	@RequestMapping("/codeListForm")
	public String codeListForm(CodeVo vo, Model model) {

		Code item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/code/codeListForm";

	}
	
	
	@RequestMapping("/codeListFormInsert")
	public String codeListFormInsert(CodeVo vo, Model model) {

		Code item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/code/codeListFormInsert";

	}
	

	@RequestMapping("/codeUpdt")
	public String codeUpdt(Code dto) {

		System.out.println("codeUpdt");
		service.update(dto);

		return "redirect:/codeXdmList";

	}
	

	@RequestMapping("/codeDelt")

	public String codeDelt(Code dto) {

		System.out.println("codeDelt");
		service.delete(dto);

		return "redirect:/codeXdmList";

	}

	@RequestMapping("/codeInsert")

	public String codeInsert(Code dto) {

		System.out.println("codeInsert");
		service.insert(dto);

		return "redirect:/codeXdmList";

	}

	@RequestMapping("/codeUelete")

	public String codeUelete(Code dto) {

		System.out.println("codeUelete");
		service.uelete(dto);

		return "redirect:/codeXdmList";

	}
	
	/*---------------------------------------------------------------------------------------------------------------------- */
	
	
	
	
	
	
	
	

}