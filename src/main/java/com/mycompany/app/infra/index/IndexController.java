package com.mycompany.app.infra.index;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.mycompany.app.infra.detail_page.Detail_page;
import com.mycompany.app.infra.detail_page.Detail_pageServiceImpl;
import com.mycompany.app.infra.detail_page.Detail_pageVo;
import com.mycompany.app.infra.member.Member;
import com.mycompany.app.infra.member.MemberServiceImpl;
import com.mycompany.app.infra.member.MemberVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class IndexController {
	@Autowired
	Detail_pageServiceImpl weekbest;
//	Detail_pageServiceImpl weekpopular;
//	Detail_pageServiceImpl service;

	@Autowired
	MemberServiceImpl serviceMember;


	@RequestMapping("/biographyUsrView")
	public String biographyUsrView() {
		return "usr/infra/biography/biographyUsrView";
	}


	@RequestMapping("/indexUsrView")
	public String indexUsrView() {
		return "usr/infra/index/indexUsrView";
	}


	@RequestMapping("/loginXdmForm")
	public String loginXdmForm() {
		return "xdm/infra/member/loginXdmForm";
	}

	@RequestMapping("/indexXdmView")
	public String indexXdmView() {
		return "xdm/infra/index/indexXdmView";
	}


	/* -----------------------------------------------------하나투어 유저 화면-------------------------------------------------------------------- */


	@RequestMapping("/main")
	public String main(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		// 데이터를 가지고 온다.
		List<Detail_page> list = weekbest.weekbest(vo);	// weekbest 객체(클래스) 내의 weekbest 함수를 호출
//		List<Detail_page> list = service.weekbest(vo);
		model.addAttribute("list",list);

		List<Detail_page> list2 = weekbest.weekpopular(vo);
		model.addAttribute("list2",list2);

		List<Detail_page> list3 = weekbest.weekrecommend(vo);
		model.addAttribute("list3",list3);

		List<Detail_page> list4 = weekbest.hanapack(vo);
		model.addAttribute("list4",list4);

		List<Detail_page> list5 = weekbest.mine(vo);
		model.addAttribute("list5",list5);

		List<Detail_page> list6 = weekbest.mainTaiwan(vo);
		model.addAttribute("list6",list6);

		List<Detail_page> list7 = weekbest.mainJapan(vo);
		model.addAttribute("list7",list7);

		List<Detail_page> list8 = weekbest.mainEurope(vo);
		model.addAttribute("list8",list8);

		List<Detail_page> list9 = weekbest.mainNew(vo);
		model.addAttribute("list9",list9);

		List<Detail_page> list10 = weekbest.mainAmerica(vo);
		model.addAttribute("list10",list10);

		List<Detail_page> list11 = weekbest.mainChina(vo);
		model.addAttribute("list11",list11);

		List<Detail_page> list12 = weekbest.mainBusan(vo);
		model.addAttribute("list12",list12);

		List<Detail_page> list14 = weekbest.slide(vo);
		model.addAttribute("list14",list14);

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);




		return "usr/infra/index/main";
	}



	@RequestMapping("/middle")
	public String middle(@ModelAttribute("vo") Detail_pageVo vo,Model model) {
		Detail_page item = weekbest.weekbestmiddle(vo);
		model.addAttribute("item",item);

		List<Detail_page> list13 = weekbest.middleList(vo);
		model.addAttribute("list13",list13);

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);


		return "usr/infra/index/middle";
	}


	@RequestMapping("/detail")
	public String detail(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		Detail_page item = weekbest.detail(vo);
		model.addAttribute("item",item);

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		return "usr/infra/index/detail";
	}

	@RequestMapping("/purchase")
	public String purchase(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		Detail_page item = weekbest.purchase(vo);
		model.addAttribute("item",item);

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		return "usr/infra/index/purchase";
	}

	@RequestMapping("/final_decision")
	public String final_decision(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		return "usr/infra/index/final_decision";
	}

	@RequestMapping("/like")
	public String like(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		return "usr/infra/index/like";
	}


	@RequestMapping("/reservation")
	public String reservation(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		return "usr/infra/index/reservation";
	}

	@RequestMapping("/nation")
	public String test2(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		Detail_page country_name = weekbest.country_name(vo);
		model.addAttribute("country_name",country_name);

		List<Detail_page> country = weekbest.country(vo);
		model.addAttribute("country",country);

//		List<Detail_page> list13 = weekbest.middleList(vo);
//		model.addAttribute("list13",list13);

		List<Detail_page> nationList = weekbest.nationList(vo);
		model.addAttribute("nationList",nationList);


		List<Detail_page> asc = weekbest.asc(vo);
		model.addAttribute("asc",asc);






		return "usr/infra/index/nation";
	}


	@RequestMapping("/search")
	public String search(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		return "usr/infra/index/search";
	}




	@RequestMapping("/cruise")
	public String cruise(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		List<Detail_page> list15 = weekbest.cruise(vo);
		model.addAttribute("list15",list15);

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		return "usr/infra/index/cruise";
	}

	@RequestMapping("/japan")
	public String japan(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		List<Detail_page> list16 = weekbest.japan(vo);
		model.addAttribute("list16",list16);

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		return "usr/infra/index/japan";
	}

	@RequestMapping("/mongolia")
	public String mongolia(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		List<Detail_page> list17 = weekbest.mongolia(vo);
		model.addAttribute("list17",list17);

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		return "usr/infra/index/mongolia";
	}

	@RequestMapping("/hongkong")
	public String hongkong(@ModelAttribute("vo") Detail_pageVo vo,Model model) {

		List<Detail_page> list18 = weekbest.hongkong(vo);
		model.addAttribute("list18",list18);

		List<Detail_page> europe = weekbest.europe(vo);
		model.addAttribute("europe",europe);

		List<Detail_page> asia = weekbest.asia(vo);
		model.addAttribute("asia",asia);

		List<Detail_page> america = weekbest.america(vo);
		model.addAttribute("america",america);

		List<Detail_page> pacific = weekbest.pacific(vo);
		model.addAttribute("pacific",pacific);

		List<Detail_page> oceania = weekbest.oceania(vo);
		model.addAttribute("oceania",oceania);

		return "usr/infra/index/hongkong";
	}

	@RequestMapping("/signUp")
	public String signUp() {
		return "usr/infra/member/signUp";
	}

	@RequestMapping("/signUpDone")
	public String signUpDone() {
		return "usr/infra/index/signUpDone";
	}


	@RequestMapping("/login")
	public String login() {
		return "usr/infra/member/login";
	}


	@ResponseBody
	@RequestMapping("/userlogin")
	public Map<String,Object> loginUser(MemberVo vo, HttpSession httpSession){
		Map<String,Object> returnMap = new HashMap<String,Object>();
		Member rtMemberUser = serviceMember.loginUser(vo);
		if(rtMemberUser != null) {
			returnMap.put("rtMemberUser",rtMemberUser);
			returnMap.put("rt","success");
			httpSession.setMaxInactiveInterval(60*60);//min60
			httpSession.setAttribute("sessionUserId",vo.getId_Email());
			httpSession.setAttribute("sessionUserName",rtMemberUser.getName());
			httpSession.setAttribute("sessionUserSeq",rtMemberUser.getSeq());
		}else {
			returnMap.put("rt","fail");
		}


		return returnMap;
	}

	@ResponseBody
	@RequestMapping("/logout")
	public Map<String, Object> logout(HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		httpSession.invalidate(); // 세션 무효화

		returnMap.put("rt", "success");

		return returnMap;
	}

	@RequestMapping(value = "/covid")
	public String publicCorona1List(Model model)throws Exception{
		System.out.println("publicCorona1List");

		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=%2BHB9o5oTOe1aKmTFsaji5%2BQCCyn8lTWH8I%2FRLHohFE77e7Oi8K9tyv7KjdVd6zxWyKy0NybAKB4yOUQHGaIR3g%3D%3D&type=json";

		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");

		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}

		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		ObjectMapper objectMapper = new ObjectMapper();

		Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);

		System.out.println("######## Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));    // ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}


		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) map.get("header");

		System.out.println("######## Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key)); // ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}

		String aaa = (String) header.get("resultCode");

		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));

		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) map.get("body");

		List<Home> items = new ArrayList<Home>();
		items = (List<Home>) body.get("items");

		System.out.println("items.size(): " + items.size());

//     for(Home item : items) {
//        System.out.println(item.getMM());
//     }

		model.addAllAttributes(header);
		model.addAllAttributes(body);
		return "usr/infra/index/covid";
	}

	@RequestMapping("/testss")
	public String test() {
		return "usr/infra/member/test";
	}

}
