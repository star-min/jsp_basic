package com.ksmstat.myapp;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ksmstat.dto.BodoboardDTO;
import com.ksmstat.dto.EmployDTO;
import com.ksmstat.dto.NoticeDTO;
import com.ksmstat.dto.PsDTO;
import com.ksmstat.service.BodoboardService;
import com.ksmstat.service.EmployService;
import com.ksmstat.service.NoticeService;
import com.ksmstat.service.PsService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	
	@Autowired
	NoticeService noticeService;
	
	@Autowired
	BodoboardService bodoboardService;
	
	@Autowired
	PsService psService;
	
	@Autowired
	EmployService employService;
	
	
	@Autowired
	HttpSession session;
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws Exception 
	 */
	
	@RequestMapping("anne.do")
	public String anne(Model model) throws Exception{
		return "win/anne";
	}
	@RequestMapping("anne2.do")
	public String anne2(Model model) throws Exception{
		return "win/anne2";
	}
	@RequestMapping("anne3.do")
	public String anne3(Model model) throws Exception{
		return "win/anne3";
	}
	@RequestMapping("gill.do")
	public String gill(Model model) throws Exception{
		return "win/gill";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		List<NoticeDTO> latestNotice = noticeService.latestNotice();
		model.addAttribute("latestNotice", latestNotice);
		
		List<BodoboardDTO> latestbodo = bodoboardService.latestbodo();
		model.addAttribute("latestbodo", latestbodo);
		
		List<PsDTO> latestPs = psService.latestPs();
		model.addAttribute("latestPs", latestPs);
		
		List<EmployDTO> latestemploy = employService.latestEmploy();
		model.addAttribute("latestemploy", latestemploy);
		
		return "home";
	}
	
}
