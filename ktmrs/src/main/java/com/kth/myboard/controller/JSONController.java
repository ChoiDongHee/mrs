package com.kth.myboard.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.kth.myboard.domain.BoardVO;
import com.kth.myboard.domain.UserVO;
import com.kth.myboard.service.BoardService;
import com.kth.myboard.service.UserService;

//메소드에서 return하는 값을 JSON 형식의 문자열로 리턴해주는 컨트롤러
//return한 이름의 뷰 페이지로 이동 X
@RestController
public class JSONController {

	@Autowired
	private UserService service;

	// 1. 요청 페이지에서 아이디를 가져와서 아이디 중복 확인 후 결과를 MAP으로 반환하는 메소드
	@RequestMapping(value = "user/idCheck", method = RequestMethod.GET)
	public Map<String, Object> idCheck(@RequestParam("id") String id) {
		// 1) UserService의 idCheck 메소드를 실행해서 결과 저장
		boolean result = service.idCheck(id);

		// 2) Map을 선언해서 result의 결과를 "result" 키로 map에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", result);

		// 3) map에 저장한 결과를 리턴함
		return map;

	}

	// 2. 안드로이드 로그인 - 모바일에서 입력한 id와 pw를 가져와서 결과를 json으로 리턴
	@RequestMapping("androidlogin")
	public Map<String, Object> login(@RequestParam("id") String id, @RequestParam("pw") String pw) {
		// 1) 사용자가 입력한 id와 pw 저장
		UserVO userVO = new UserVO();
		userVO.setId(id);
		userVO.setPw(pw);
		// 2) Service의 login 메소드 실행 -> 결과 저장
		// -> 로그인 성공 시 로그인 정보 저장, 실패 시 null
		UserVO result = service.login(userVO);
		// 3) 로그인 결과를 map에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", result);
		// 4) result 값을 저장한 map 리턴
		return map;
	}

	@Autowired
	private BoardService boardService;

	// 3. 안드로이드 목록 보기 - 모바일에서 게시글의 리스트를 볼 수있도록 JSON으로 리턴
	@RequestMapping("androidlist")
	public Map<String, Object> list() {
		// 1) 테이블 내용을 List 객체에 저장
		List<BoardVO> list = boardService.showList();

		// 2) 저장한 내용을 map으로 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", list);

		// 3) 맵을 리턴
		return map;

	}

	// 4. 안드로이드 상세 보기 - 모바일에서 선택한 글 번호로, 글 번호에 해당하는 데이터 JSON으로 리턴
	@RequestMapping("androiddetail")
	public Map<String, Object> detail(@RequestParam("bno") int bno) {
		// 1) bno를 기준으로 데이터 가져와서 저장
		BoardVO boardVO = boardService.getBoard(bno);

		// 2) 테이블에서 가져온 데이터를 Map에 저장
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("result", boardVO);

		// 2) 데이터를 저장한 Map을 리턴
		return map;
	}

	// ** JSON으로 리턴하는 경우 반드시 Chrome에서 데이터가 어떻게 출력되는지 확인 할 것

}
