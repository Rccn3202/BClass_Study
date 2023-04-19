package com.mycompany.basic;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
   
	@Autowired
	BoardService boardService;
	
	// 요청 /board  응답 board/board1  쿠팡 게시판
	@RequestMapping( value="/board", method=RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView( "board/board1");
	}
	
	@RequestMapping( value="/board", method=RequestMethod.POST)
	public ModelAndView createPost(  @RequestParam  Map<String, Object>   map   ) {
		ModelAndView mav = new ModelAndView();
		
		String no = this.boardService.create(map);
		if(no == null ) {
			mav.setViewName("redirect:/board");
		}else {
			mav.setViewName("redirect:/detail?no="+no);
		}
		return mav;
	}
}
