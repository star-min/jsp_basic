package com.veryvery.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.veryvery.dto.GoodsDTO;
import com.veryvery.service.GoodsService;

@Controller
@RequestMapping("/goods/*")
public class GoodsController {
	
	@Autowired
	GoodsService goodsService;
	
	@RequestMapping("list.do")
	public String goodsList(Model model) throws Exception {
		List<GoodsDTO> goodsList = goodsService.goodsList();
		model.addAttribute("goodsList", goodsList);
		return "goods/goodsList";
	}

	
	@RequestMapping(value="read.do", method = RequestMethod.GET)
	public String goodsRead(@RequestParam int gno, Model model) throws Exception {
		GoodsDTO goods = goodsService.goodsRead(gno);
		model.addAttribute("goods", goods);
		return "goods/goodsRead";
	}

	@RequestMapping("write_form.do")  
	public String goodsWriteForm(Model model) throws Exception {
		return "goods/goodsWriteForm";
	}
	
	@RequestMapping(value="insert.do", method = RequestMethod.POST)
	public String goodskWrite(GoodsDTO gdto, Model model) throws Exception {
		goodsService.goodsWrite(gdto);
		return "redirect:list.do";
	}
	
	@RequestMapping(value="update.do", method = RequestMethod.POST)
	public String goodsUpdate(GoodsDTO gdto, Model model) throws Exception {
		goodsService.goodsUpdate(gdto);
		return "redirect:list.do";
	}

	@RequestMapping(value="delete.do", method = RequestMethod.GET)
	public String goodsDelete(@RequestParam int gno, Model model) throws Exception {
		goodsService.goodsDelete(gno);
		return "redirect:list.do";
	}

}
