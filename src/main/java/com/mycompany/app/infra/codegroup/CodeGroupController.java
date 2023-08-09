package com.mycompany.app.infra.codegroup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;

//	@RequestMapping("/codeGroupXdmList")
//	public String codeGroupXdmList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
//		System.out.println("controller: vo.getShOption(): " + vo.getShOption());
//		System.out.println("controller: vo.getShKeyword(): " + vo.getShKeyword());
//
//		vo.setShKeyword(vo.getShKeyword() ==null? "번":vo.getShKeyword());
//		List<CodeGroup> list = service.selectList(vo);
//
//		System.out.println("list.size(): " + list.size());
//
////		왼쪽의 list는 isp에서 사용할 변수명
//		model.addAttribute("list", list);
//		/* model.addAttribute("vo", vo); */
//		/* 상단의 @ModelAttribute("vo")와 똑같음 */
//		return "/xdm/infra/codegroup/codeGroupXdmList";
//	}

	
	
	
	
	
	
	@RequestMapping("/codeGroupXdmList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
	
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
//			model.addAttribute("vo", vo);
		} else {
//			by pass
		}
		
		return "xdm/infra/codegroup/codeGroupXdmList";
		}
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/codeGroupListForm")
	public String codeGroupListForm(CodeGroupVo vo, Model model) {

		CodeGroup item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/codegroup/codeGroupListForm";

	}
	
	
	@RequestMapping("/codeGroupListFormInsert")
	public String codeGroupListFormInsert(CodeGroupVo vo, Model model) {

		CodeGroup item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/codegroup/codeGroupListFormInsert";

	}
	
	@RequestMapping("/test")
	public String test(CodeGroupVo vo, Model model) {

		CodeGroup item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/codegroup/test";

	}
	

	@RequestMapping("/codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) {

		System.out.println("codeGroupUpdt");
		service.update(dto);

		return "redirect:/codeGroupXdmList";

	}
	

	@RequestMapping("/codeGroupDelt")

	public String codeGroupDelt(CodeGroup dto) {

		System.out.println("codeGroupDelt");
		service.delete(dto);

		return "redirect:/codeGroupXdmList";

	}

	@RequestMapping("/codeGroupInsert")

	public String codeGroupInsert(CodeGroup dto) {

		System.out.println("codeGroupInsert");
		service.insert(dto);

		return "redirect:/codeGroupXdmList";

	}

	@RequestMapping("/codeGroupUelete")

	public String codeGroupUelete(CodeGroup dto) {

		System.out.println("codeGroupUelete");
		service.uelete(dto);

		return "redirect:/codeGroupXdmList";

	}
	
	/*---------------------------------------------------------------------------------------------------------------------- */
	
	
	
	
	
	
	
	

}