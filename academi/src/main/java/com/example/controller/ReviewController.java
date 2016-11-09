package com.example.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import com.example.dto.Goods;
import com.example.dto.Review;
import com.example.dto.ReviewReply;
import com.example.dto.Route;
import com.example.dto.Users;
import com.example.service.MroService;
import com.example.service.ReviewReplyService;
import com.example.service.ReviewService;
import com.example.service.RouteService;
import com.example.service.UserService;

/**
 * 후기게시판
 *
 */
@Controller
public class ReviewController {
	static Logger logger = LoggerFactory.getLogger(ReviewController.class);
	private final String UPLOAD_DIR = "c:/Temp/";
	@Autowired
	UserService us;
	@Autowired
	ReviewService rs;
	@Autowired
	ReviewReplyService rrs;
	@Autowired
	RouteService routeService;
	
	@Autowired
	MroService ms;

	// 후기게시판 리스트 보기
	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String free(Model model, @RequestParam int page, HttpSession session) {
		List<Review> r = rs.reviewListByPage(page);
		model.addAttribute("posts", r);

		int pageCount = rs.pageCount();
		int totalPage = pageCount / 9 + 1;
		if (pageCount % 9 == 0) {
			totalPage -= 1;
		}
		if (pageCount == 0) {
			totalPage = 0;
		}
		model.addAttribute("totalPage", totalPage);
		return "nonsession/postscript/post_main";
	}

	// 후기 -단일게시물 보기
	@RequestMapping(value = "/postView", method = RequestMethod.GET)
	
	public String noticeView(Model model, @RequestParam int reviewNo, HttpServletRequest request) {
		rs.count(reviewNo);
		Review r = rs.selectReview(reviewNo);
		List<ReviewReply> rr = rrs.selectReplyList(reviewNo);
	
		String str3 = r.getRoute().getRouteFull();
		
		/*Route result = routeService.selectRouteByNo(routeNo);*/
		logger.trace("여기로 들어오니 ?");
		//루트 전체를  str3에 담아주고 
		
	
		
		int count4 = 0;
		//str3의 길이만큼 반복되는데
		System.out.println("str3 : " + str3);
		for (int c = 0; c < str3.length(); c++) {
			//♬가 나올때마다 카운트를 해준다
			if (str3.charAt(c) == '♬') {
				count4++;
			}
		}
		
		//♬가 5개가 경로 1개이므로 5로 나누어준다.
		int i = count4 / 5;

		//addr에 경로 갯수만큼 배열의 크기를 넣어주고
		String routeName[] = new String[i];
		String Addr[] = new String[i];

		
		i=0;
		
		//토큰을 생성해서 넘겨준다
		StringTokenizer tokens = new StringTokenizer(str3, "♬");
		while (tokens.hasMoreTokens()) {
			routeName[i] = tokens.nextToken();
			tokens.nextToken();
			tokens.nextToken();
			//주소 값이 들어가있는 곳에서 주소배열에 값을 넣어준다
			Addr[i] = tokens.nextToken();
			tokens.nextToken();
			i++;

		}
		List<String> list = new ArrayList<>();
		String InputRouteName="";
		String InputAddr=""; 
		for(int j=0; j<i; j++){
		InputRouteName=routeName[j];
		InputAddr= Addr[j];
		list.add(InputRouteName+"("+InputAddr+")");
		logger.trace("list.get??:{}",list.get(j));
		}
		 
		 
		model.addAttribute("addRoute",list);
		model.addAttribute("post", r);
		model.addAttribute("replys", rr);
		return "nonsession/postscript/post_view";
	}

	

	// 리뷰 댓글 ajax
	@RequestMapping(value = "/session/replyRegist2", method = RequestMethod.POST)
	public @ResponseBody List<ReviewReply> ajaxreply(@RequestParam String userId, @RequestParam String replyContent,
			@RequestParam int reviewNo, HttpSession session) {
		int result = rrs.insertReply(replyContent, reviewNo, userId);
		List<ReviewReply> list = rrs.selectReplyList(reviewNo);
		return list;
	}
	
	// 댓글 삭제
		@RequestMapping(value="/reviewReplyDelete", method=RequestMethod.POST)
		public String reviewReplyDelete(Model model, HttpServletRequest request, HttpSession session, 
				@RequestParam int replyReviewNo, @RequestParam int replyNo) {
			logger.trace("{}", replyNo);
			int result = rrs.deleteReply(replyNo);
			if(result == 1){
				session.setAttribute("message", "댓글 삭제 완료");
			}
			return "redirect:/postView?reviewNo="+replyReviewNo;
		}

	// 리뷰 쓰기 페이지로 넘어감
	@RequestMapping(value = "/session/postsign", method = RequestMethod.GET)
	public String noticeWrtie(Model model,HttpSession session) {
		//user가 세션에 존재하지 않으면
		if(session.getAttribute("Users")==null){
			//세션 forpage에 값을 넣어줌
			session.setAttribute("forPage", "session/postscript/post_sign");
		}
		return "session/postscript/post_sign";
	}

	// 리뷰 글 쓰기
	@RequestMapping(value = "/postWrite", method = RequestMethod.POST)
	public String commentWrite(Model model, HttpServletRequest request, HttpSession session,MultipartFile file)
			throws IllegalStateException, IOException {
		
		String fileName= System.currentTimeMillis() + file.getOriginalFilename();
		File f = new File(UPLOAD_DIR + fileName);
		file.transferTo(f);
		
		
		
		String routeNo = request.getParameter("routeNumber");
		if(routeNo == ""){
			routeNo = "0";
		}
		
		String reviewTitle = request.getParameter("title");
		String reviewContent0 = request.getParameter("content0");
		String reviewContent1 = request.getParameter("content1");
		String reviewContent2 = request.getParameter("content2");
		String reviewContent3 = request.getParameter("content3");
		String reviewContent4 = request.getParameter("content4");
		String reviewContent5 = request.getParameter("content5");
		String reviewContent6 = request.getParameter("content6");
		String reviewContent7 = request.getParameter("content7");
		String reviewContent8 = request.getParameter("content8");
		String reviewContent9 = request.getParameter("content9");
		String reviewImage = fileName;

		List<String> strContent = new ArrayList<>();
		if (reviewContent0 != null
				&& !reviewContent0.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent0);
		}
		if (reviewContent1 != null
				&& !reviewContent1.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent1);
		}
		if (reviewContent2 != null
				&& !reviewContent2.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent2);
		}
		if (reviewContent3 != null
				&& !reviewContent3.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent3);
		}
		if (reviewContent4 != null
				&& !reviewContent4.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent4);
		}
		if (reviewContent5 != null
				&& !reviewContent5.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent5);
		}
		if (reviewContent6 != null
				&& !reviewContent6.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent6);
		}
		if (reviewContent7 != null
				&& !reviewContent7.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent7);
		}
		if (reviewContent8 != null
				&& !reviewContent8.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent8);
		}
		if (reviewContent9 != null
				&& !reviewContent9.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent9);
		}

		String[] contentArr = new String[10];
		for (int i = 0; i < strContent.size(); i++) {
			contentArr[i] = strContent.get(i);
		}
		for (int i = strContent.size(); i < 9; i++) {
			contentArr[i] = null;
		}
	
		Users u = (Users) session.getAttribute("Users");
		String userId = u.getUserId();

		// 이미지의 경로가 저장되도록
		rs.insertReview(reviewTitle, contentArr[0], contentArr[1], contentArr[2], contentArr[3], contentArr[4],
				contentArr[5], contentArr[6], contentArr[7], contentArr[8], contentArr[9], Integer.parseInt(routeNo),reviewImage, userId);

		//루트 no를 통해 루트의 정보를 가져온다
		Route result = routeService.selectRouteByNo(Integer.parseInt(routeNo));
		logger.trace("여기로 들어오니 ?");
		//루트 전체를  str3에 담아주고 
		 
		String str3 = result.getRouteFull();
		
		int count4 = 0;
		//str3의 길이만큼 반복되는데
		System.out.println("str3 : " + str3);
		for (int c = 0; c < str3.length(); c++) {
			//♬가 나올때마다 카운트를 해준다
			if (str3.charAt(c) == '♬') {
				count4++;
			}
		}
		
		//♬가 5개가 경로 1개이므로 5로 나누어준다.
		int i = count4 / 5;

		//addr에 경로 갯수만큼 배열의 크기를 넣어주고
		String Addr[] = new String[i];

		
		i=0;
		
		//토큰을 생성해서 넘겨준다
		StringTokenizer tokens = new StringTokenizer(str3, "♬");
		while (tokens.hasMoreTokens()) {
			tokens.nextToken();
			tokens.nextToken();
			tokens.nextToken();
			//주소 값이 들어가있는 곳에서 주소배열에 값을 넣어준다
			Addr[i] = tokens.nextToken();
			tokens.nextToken();
			i++;

		}
		System.out.println("완성본::::");		
		
		
		
		for(int y=0;y<i;y++){
			String str = Addr[y];
		
		//도 or 광역시 변수
		String city;
		//도의 시 혹은 광역시의 구
		String siGu;
		//도의 구
		String siGu2;
		
		//리스트를 만들어준다 -> 띄어쓰기를 할때마다 그 숫자를 리스트에 넣어줌
		List<Integer> pos = new ArrayList<>();
		int count = 0;
		for (int c = 0; c < str.length(); c++) {
			if (str.charAt(c) == ' ') {
				pos.add(count);
			}
			count++;
		}

		
		//공백 제거
		city=str.substring(0, pos.get(0)).trim();
		siGu=str.substring(pos.get(0),pos.get(1)).trim();
		siGu2=str.substring(pos.get(1),str.length()).trim();
		
		if(siGu.equals("수영구")||siGu.equals("영도구")||siGu.equals("도봉구")||siGu.equals("동대문구")
			||siGu.equals("성북구")||siGu.equals("동구")||siGu.equals("남구")||siGu.equals("달서구")
			||siGu.equals("서대문구")||siGu.equals("성동구")||siGu.equals("중랑구")||siGu.equals("남동구")
			||siGu.equals("광산구")||siGu.equals("서구")||siGu.equals("동래구")||siGu.equals("강북구")
			||siGu.equals("마포구")||siGu.equals("영등포구")||siGu.equals("구례군")||siGu.equals("중구")
			||siGu.equals("강서구")||siGu.equals("사상구")||siGu.equals("관악구")||siGu.equals("구로구")
			||siGu.equals("동작구")||siGu.equals("수성구")||siGu.equals("유성구")||siGu.equals("부산진구")
			||siGu.equals("노원구")||siGu.equals("송파구")||siGu.equals("구미시")||siGu.equals("북구")
			||siGu.equals("금정구")||siGu.equals("사하구")||siGu.equals("연제구")||siGu.equals("해운대구")
			||siGu.equals("강남구")||siGu.equals("양천구")||siGu.equals("은평구")||siGu.equals("부평구")
			||siGu.equals("양구군")||siGu.equals("대덕구")||siGu.equals("강동구")||siGu.equals("광진구")
			||siGu.equals("금천구")||siGu.equals("서초구")||siGu.equals("용산구")||siGu.equals("종로구")
			||siGu.equals("계양구")||siGu.equals("연수구")||siGu.equals("구리시"))
		siGu2="";
		//
		else if(siGu.equals("전주시")||siGu.equals("고양시")||siGu.equals("부천시")||siGu.equals("용인시")
				||siGu.equals("청주시")||siGu.equals("수원시")||siGu.equals("창원시")||siGu.equals("안양시")
				||siGu.equals("성남시")||siGu.equals("천안시")||siGu.equals("포항시")||siGu.equals("수원시")
				||siGu.equals("청주시")||siGu.equals("안산시"))
		{
			
			int ccc=0;
			int guPoint=0;
			for (int c = 0; c < siGu2.length(); c++) {
				if (siGu2.charAt(c) == '구') {
					guPoint=ccc;
				}
				ccc++;			
				
			}
			
			//구의 앞 글자
			String frontGu=siGu2.substring(0, guPoint);
			//구의 뒷 글자 -> 제거해주기 위햐여
			String afterGu=siGu2.substring(guPoint);
			
			//구의 뒤글자들을 모두 제거해줌
			afterGu = afterGu.replaceAll(" ", "");
			afterGu = afterGu.replaceAll("-", "");
			afterGu = afterGu.replaceAll("^구[가-힣0-9]{0,20}", "구");
			
			//구의 앞글자와 구를 합쳐 정상적인 구로 만들어줌
			siGu2=frontGu+afterGu;
			
			
			if(siGu2.equals("완산구")||siGu2.equals("덕양구")||siGu2.equals("소사구")||siGu2.equals("처인구")
				||siGu2.equals("상당구")||siGu2.equals("팔달구")||siGu2.equals("진해구")||siGu2.equals("남구")
				||siGu2.equals("북구")||siGu2.equals("원미구")||siGu2.equals("동남구")||siGu2.equals("일산서구")
				||siGu2.equals("권선구")||siGu2.equals("만안구")||siGu2.equals("성산구")||siGu2.equals("의창구")
				||siGu2.equals("흥덕구")||siGu2.equals("오정구")||siGu2.equals("장안구")||siGu2.equals("동안구")
				||siGu2.equals("마산회원구")||siGu2.equals("단원구")||siGu2.equals("상록구")||siGu2.equals("마산합포구")
				||siGu2.equals("일산동구")||siGu2.equals("수정구")||siGu2.equals("중원구")||siGu2.equals("영통구")
				||siGu2.equals("기흥구")||siGu2.equals("덕진구")||siGu2.equals("서북구")||siGu2.equals("분당구")
				||siGu2.equals("수지구")){
			}
			else{
				System.out.println("버그"+siGu2);
				siGu2="";
			}
			
		}
		String fullSiGu = siGu+" "+siGu2;
		fullSiGu = fullSiGu.trim();
		
		logger.trace("시/도 :{}", city);
		logger.trace("구 :{}", fullSiGu);
/*		System.out.println(city+"\t"+siGu+"\t"+siGu2);*/
		
		ms.updateCnt(city, fullSiGu);

		
		}
		

		return "redirect:/postView?reviewNo="+rs.currentNo();
		
	
	}

	// 리뷰 수정창으로 넘어가기
	@RequestMapping(value = "/session/postUpdate", method = RequestMethod.POST)
	public String noticeUpdate(Model model, HttpServletRequest request
			,@RequestParam int reviewNo) {
		logger.trace("review no : {}",reviewNo);
		Review r = rs.selectReview(reviewNo);
		model.addAttribute("review", r);
		return "session/postscript/change_post";
	}

	// 리뷰 수정하기
	@RequestMapping(value = "/reviewUpdate", method = RequestMethod.POST)
	public String commentUpdate(Model model, HttpServletRequest request) throws IllegalStateException, IOException {
		
		String reviewNo = request.getParameter("reviewNo");
		String reviewTitle = request.getParameter("title");
		String reviewContent0 = request.getParameter("content0");
		String reviewContent1 = request.getParameter("content1");
		String reviewContent2 = request.getParameter("content2");
		String reviewContent3 = request.getParameter("content3");
		String reviewContent4 = request.getParameter("content4");
		String reviewContent5 = request.getParameter("content5");
		String reviewContent6 = request.getParameter("content6");
		String reviewContent7 = request.getParameter("content7");
		String reviewContent8 = request.getParameter("content8");
		String reviewContent9 = request.getParameter("content9");
		


		List<String> strContent = new ArrayList<>();
		if (reviewContent0 != null
				&& !reviewContent0.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent0);
		}
		if (reviewContent1 != null
				&& !reviewContent1.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent1);
		}
		if (reviewContent2 != null
				&& !reviewContent2.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent2);
		}
		if (reviewContent3 != null
				&& !reviewContent3.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent3);
		}
		if (reviewContent4 != null
				&& !reviewContent4.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent4);
		}
		if (reviewContent5 != null
				&& !reviewContent5.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent5);
		}
		if (reviewContent6 != null
				&& !reviewContent6.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent6);
		}
		if (reviewContent7 != null
				&& !reviewContent7.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent7);
		}
		if (reviewContent8 != null
				&& !reviewContent8.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent8);
		}
		if (reviewContent9 != null
				&& !reviewContent9.replaceAll("&nbsp;", "").replaceAll(" ", "").trim().equals("<p></p>")) {
			strContent.add(reviewContent9);
		}

		String[] contentArr = new String[10];
		logger.trace("strContent : {}", strContent);
		logger.trace("length : {}", strContent.size());
		for (int i = 0; i < strContent.size(); i++) {
			contentArr[i] = strContent.get(i);
		}
		for (int i = strContent.size(); i < 9; i++) {
			contentArr[i] = null;
		}
		
		int routeNo = Integer.parseInt(request.getParameter("routeNo"));
		logger.trace("routeNo :{}",routeNo);
		rs.updateReview(Integer.parseInt(reviewNo), reviewTitle, contentArr[0], contentArr[1], contentArr[2],
				contentArr[3], contentArr[4], contentArr[5], contentArr[6], contentArr[7], contentArr[8], contentArr[9],
				routeNo);
		return "redirect:/postView?reviewNo=" + reviewNo;
	}

	// 리뷰 삭제
	@RequestMapping(value = "/reviewDelete", method = RequestMethod.POST)
	public String commentDelete(Model model, HttpServletRequest request, HttpSession session) {
		String reviewNo = request.getParameter("reviewNo");
		int result = rs.deleteReview(Integer.parseInt(reviewNo));
		if (result == 1) {
			session.setAttribute("message", "정상 삭제 완료");
		}
		return "redirect:/post?page=1";
	}
	
	// 마이페이지 리뷰 삭제
	@RequestMapping(value = "/mypageReviewDelete", method = RequestMethod.POST)
	public String mypageCommentDelete(Model model, HttpServletRequest request, HttpSession session) {
		String reviewNo = request.getParameter("reviewNo");
		int result = rs.deleteReview(Integer.parseInt(reviewNo));
		return "redirect:/session/mypageReview?page=1"; 
	}

	// 리뷰 추천하기 기능 ajax
	@RequestMapping(value = "/session/star", method = RequestMethod.GET)
	public @ResponseBody int ajaxstar(@RequestParam int reviewNo, HttpSession session) {
		int result = rs.updateStar(reviewNo);
		logger.trace("추천된 결과값 : {}", result);
		return result;
	}

	// 경로 새로만들기로 연결

	@RequestMapping(value = "/session/newMap", method = RequestMethod.GET)
	public String NewMap(Model model) {
		return "session/postscript/new_map";
	}

	// 경로 있는것중에 선택하기
	@RequestMapping(value = "/session/existMap", method = RequestMethod.GET)
	public String ExistMap(Model model,HttpSession session) {
		Users u = (Users) session.getAttribute("Users");
		String userId = u.getUserId();
		
		 List<Route> existMap=routeService.selectRouteById(userId);
		
		model.addAttribute("existMap",existMap);
		return "session/postscript/exist_map";
	}
	
	@RequestMapping(value = "/countRoute", method = RequestMethod.GET)
	public String countRoute(HttpSession session, Model model, @RequestParam int routeNo, SessionStatus status) {

		Route result = routeService.selectRouteByNo(routeNo);
		String str = result.getRouteFull();
		int count = 0;
		for (int c = 0; c < str.length(); c++) {
			if (str.charAt(c) == '♬') {
				count++;
			}
		}
		int i = count / 5;

		String Addr[] = new String[i];

		
		i=0;
		
		StringTokenizer tokens = new StringTokenizer(str, "♬");
		while (tokens.hasMoreTokens()) {
			tokens.nextToken();
			tokens.nextToken();
			tokens.nextToken();
			Addr[i] = tokens.nextToken();
			tokens.nextToken();
			i++;

		}
		for (int cnt = 0; cnt < i; cnt++) {
		logger.trace("주소 : {}" , Addr[cnt]);
		}
	
	return "";
	}

}
