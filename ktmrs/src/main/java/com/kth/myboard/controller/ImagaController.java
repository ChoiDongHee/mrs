package com.kth.myboard.controller;

import java.io.File;
import java.nio.file.Files;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // Controller 선언
@RequestMapping("/board/*") // /board로 시작하는 요청 주소는 이 컨트롤러가 처리
public class ImagaController {

	@Resource(name="uploadPath")
    private String uploadPath; //업로드된 파일 저장 경로
	
	@RequestMapping(value = "imgLoad.do")
	public void imgLoad(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String fileDir = req.getParameter("fileDir");
		String fileName = req.getParameter("fileName");
		
		String path = uploadPath + "\\" + fileDir;
		File file = new File(path, fileName);
		
        res.setHeader("Content-Length", String.valueOf(file.length()));
        res.setHeader("Content-Disposition", "inline; filename=\"" + file.getName() + "\"");
        Files.copy(file.toPath(), res.getOutputStream());
	}
}
