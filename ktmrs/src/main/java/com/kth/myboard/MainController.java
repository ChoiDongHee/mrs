package com.kth.myboard;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kth.myboard.domain.BoardVO;
import com.kth.myboard.domain.PagingDTO;
import com.kth.myboard.service.BoardService;

@Controller // Controller ¼±¾ð
public class MainController {
	
	static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main02(Locale locale, Model model) {
		
		 logger.info("join home! The client locale is {}.", locale);	
		 String imgUri="/ktmrs/resources/argon/";
		 model.addAttribute("imgUri", imgUri );
		
		return "index_argon_org";
	}
	
}
