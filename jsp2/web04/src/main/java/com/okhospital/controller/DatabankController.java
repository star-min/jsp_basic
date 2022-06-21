package com.okhospital.controller;

import java.util.List;

import javax.servlet.http.HttpServlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.okhospital.dto.DatabankDTO;
import com.okhospital.service.DatabankService;

@Controller
@RequestMapping("/databank/*")
public class DatabankController {
	
	@Autowired
	DatabankService databankService;
	
	@RequestMapping("list.do")
	public String databankList(Model model) throws Exception {
		List<DatabankDTO> databankList = databankService.databankList();
		model.addAttribute("databankList", databankList);
		return "databank/databankList";
	}

	@RequestMapping(value="read.do", method = RequestMethod.GET)
	public String databankRead(@RequestParam int datano, Model model) throws Exception {
		DatabankDTO databank = databankService.databankRead(datano);
		model.addAttribute("databank", databank);
		return "databank/databankRead";
	}

	@RequestMapping("write_form.do")  
	public String databankWriteForm(Model model) throws Exception {
		return "databank/databankWriteForm";
	}
	
	@RequestMapping(value="insert.do", method = RequestMethod.POST)
	public String databankWrite(DatabankDTO ddto, Model model) throws Exception {
		databankService.databankWrite(ddto);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	public String databankUpdate(DatabankDTO ddto, Model model) throws Exception {
		databankService.databankUpdate(ddto);
		return "redirect:list.do";
	}

	@RequestMapping(value="delete.do", method = RequestMethod.GET)
	public String databankDelete(@RequestParam int datano, Model model) throws Exception {
		databankService.databankDelete(datano);
		return "redirect:list.do";
	}
}
