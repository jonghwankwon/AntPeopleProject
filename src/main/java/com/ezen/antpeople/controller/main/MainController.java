package com.ezen.antpeople.controller.main;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ezen.antpeople.controller.user.UserController;
import com.ezen.antpeople.dto.user.UserDTO;
import com.ezen.antpeople.service.UserService;

@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
<<<<<<< HEAD

	@RequestMapping("/index")
	public String main(Model model) {
		logger.info("index 페이지");
		return "login";
=======
	
	@Inject
	UserService userService;
	
	@RequestMapping("/")
	public String main() {
		logger.info("index 페이지");
		return "pages/login";
	}
	
	@RequestMapping("/pages/notice")
	public String notice() {
		logger.info("notice 페이지");
		return "pages/notice";
	}
	
	@RequestMapping("/pages/stafflist")
	public String stafflist() throws Exception {
		logger.info("staffList 페이지");
		return "pages/stafflist";
	}
	
	@RequestMapping("/pages/privatecalender") 
	public ModelAndView privateCalender(ModelAndView mav, @RequestParam("user_id") int user_id) throws Exception {
		UserDTO user = userService.getUser(user_id);
		mav.setViewName("pages/calender");
		mav.addObject("list", user);
		return mav;
	}
	
	@RequestMapping("/pages/todaystaff")
	public String todaystaff() throws Exception {
		return "pages/todaystaff";
>>>>>>> 1fccb51abe0e0aa97794419d4e4e4fdf48f8e582
	}
	
}
