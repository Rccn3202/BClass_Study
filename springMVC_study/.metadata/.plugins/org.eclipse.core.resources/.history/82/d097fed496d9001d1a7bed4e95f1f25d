package com.mycompany.basic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	
	//   /join요청하면  "member/join.jsp"뷰로 응답
	@RequestMapping( value="/join", method=RequestMethod.GET)
	public ModelAndView join() {
		return new ModelAndView( "member/join");
	}
}
