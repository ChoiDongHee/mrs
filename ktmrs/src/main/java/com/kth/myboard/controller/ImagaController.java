package com.kth.myboard.controller;

import java.io.File;
import java.nio.file.Files;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // Controller ����
@RequestMapping("/board/*") // /board�� �����ϴ� ��û �ּҴ� �� ��Ʈ�ѷ��� ó��
public class ImagaController {

	@Resource(name="uploadPath")
    private String uploadPath; //���ε�� ���� ���� ���
	
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
