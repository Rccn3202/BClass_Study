package sample.spring.yse;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller  
public class BookController {
	
	@Autowired
	BookService bookService;
	
	@RequestMapping(value="/cinsert", method=RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("book/create");
	}

	@RequestMapping(value = "/cinsert", method = RequestMethod.POST)
	public ModelAndView createPost( @RequestParam Map<String, Object> map  ) {
		ModelAndView mav = new ModelAndView();
		
		String bookId = this.bookService.create(map);
		if(bookId==null) {
			mav.setViewName("redirect:/create"); // 재요청하기 /create 라고 
		} else {
			System.out.println( "삽입 성공");
			mav.setViewName("redirect:/detail?bookId=" + bookId);
		}
		return mav;
	}
	
	@RequestMapping(value="/detail", method=RequestMethod.GET )
	public ModelAndView  detail( @RequestParam  Map<String, Object>  map ) {
		
		Map<String, Object> detailMap = this.bookService.detail(map);
		System.out.println( detailMap + "~~");
		ModelAndView mav = new ModelAndView();
		if(detailMap == null ) {
			mav.setViewName("/book/error");
		}	
		else {
		mav.addObject("data", detailMap); //뷰로 detailMap의 값(데이터베이스에서 받은 ResultSet)을 data 속성에 담아서 보내라
	    String bookId = map.get("bookId").toString();
	    mav.addObject("bookId", bookId);
	    
	    //http://localhost:8085/yse/detail?bookId=5&bookQr=50&bookPublisher=한빛
//	    String bookQr = map.get("bookQr").toString();  //50
//	    mav.addObject( "bookQrAName" , bookQr );//  bookQr값을 받아서 뷰의 bookQrAName 속성값으로 보내라
//	    String bookPub=map.get("bookPublisher").toString(); //한빛
//	    mav.addObject("bookPubAName", bookPub);
	    
//	   // http://localhost:8085/yse/detail?bookId=5&a=2000&b=true&c=이젠
//       String a = map.get("a").toString();
//       mav.addObject("aAN", a);
//       String b = map.get("b").toString();
//       mav.addObject("bAN", b);
//       String c = map.get("c").toString();
//       mav.addObject("cAN", c);
       
       
	    
	    
	    mav.setViewName("/book/detail"); // src/main/webapp/web-inf/views/book/detail.jsp파일로 응답해라
		}
	    return mav;
	}
	
	//수정하기 입력화면 나오는 부분의 메서드 컨트롤러 짜기
	// 요청 --> 처리 : 서비스 객체 전달-> 뷰객체 생성 --> 응답
	@RequestMapping(value="/update", method=RequestMethod.GET )
	public ModelAndView  update( @RequestParam  Map<String, Object>  map) {
		System.out.println("updata get방식 부분임");
		Map<String, Object> detailMap = this.bookService.detail(map);
		ModelAndView mav = new ModelAndView();
		mav.addObject("detail",detailMap );
		
		mav.setViewName("/book/update"); //update.jsp 파일로 응답한다.
		return mav;
	}
	//수정하는 데이터를 입력하고 저장버튼을 누르면 수행되는 메소드
	// 처리할 요구사항은 수정한 후에 상세페이지를 보여라 
	//<form method="post">
	// 기능 : 요청 --->  처리 : 서비스 수정된 내용을 전달해야 함   ---> 응답
	@RequestMapping(value="/update", method = RequestMethod.POST)
	public  ModelAndView   updatePost( @RequestParam Map<String, Object> map) {
		 
		ModelAndView mav = new ModelAndView();
		 boolean isUpdateSuccess =  this.bookService.edit(map);
		 //수정이 성공하면 상세페이지를 보이게 하세요-요구사항에 있음
		 if( isUpdateSuccess ) {
			 String bookId = map.get("bookId").toString();
			 mav.setViewName("redirect:/detail?bookId=" + bookId);
		 }else {
            mav = this.update(map);			 
		 }
		 return mav;
	}
	
	//삭제 메소드
	// 요청 --->  처리 : 삭제하는 서비스로 연결 -> 뷰를 설정하기   ---> 응답
//	 <form method="post" action="/delete">
//     <input type="hidden" name="bookId" value="${bookId}"/>
 //    <input type="submit" value="삭제" />
 // </form>
	@RequestMapping( value="/delete", method=RequestMethod.POST )
	public ModelAndView deletePost(  @RequestParam  Map<String, Object>  map ) {
		  boolean isDeleteSuccess = this.bookService.remove(map);
		  //요구사항 삭제한 후에 목록이 보이게 하기, 삭제 실패하면 다시 상세페이지로 보이기
		  ModelAndView mav =new ModelAndView();
		  String bookId = map.get("bookId").toString();
		  if(isDeleteSuccess) {
			  mav.setViewName("redirect:/list");
		  } else {
			  mav.setViewName("redirect:/detail?bookId=" + bookId);
		  }
		  return mav;
		
	}
	
	//책 전체목록 처리
	//요청 부분 <a href="/list"> 목록으로</a>
	//요청-->처리(서비스 연결, 뷰 설정)-->응답(list.jap파일로)
	@RequestMapping(value="/list",method=RequestMethod.GET)
	public ModelAndView list(@RequestParam Map<String, Object> map) {
		List<Map<String,Object>> list= this.bookService.list(map);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("data",list); //내려줄 자료
		
		if(map.containsKey("keyword")) { //검색어가 있다.만약에 "스프링"이라는 키워드를 넣었다면
			mav.addObject("keyword",map.get("keyword")); //스프링이라는 단어를 keyword의 파라미터로 넣어서 뷰로 보낸다
		}
		
		mav.setViewName("/book/list"); //뷰네임
		//list.jsp 파일로 응답해준다
		return mav;	
	}	
}
