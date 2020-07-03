//package com.drug.controller;
//
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.drug.po.Medicin;
//import com.drug.service.MedicinService;
//import com.drug.util.Page;
//
//@Controller
//public class MedicinController {
//	// 依赖注入
//	@Autowired
//	private MedicinService medicinService;
//	
////	// 药品名字
////	@Value("${medicin.name.type}")
////	private String NAME_TYPE;
////	// 药品价格
////	@Value("${medicin.price.type}")
////	private String PRICE_TYPE;
////
////	// 药品生产商
////	@Value("${medicin.product.type}")
////	private String PRODUCT_TYPE;
//
//	/**
//	 * 药品列表
//	 */
//	@RequestMapping(value = "/medicin/list.action")
//	public String list(@RequestParam(defaultValue = "1") Integer page, @RequestParam(defaultValue = "10") Integer rows,
//			String medName, Float medPrice, String medProduct, Model model) {
//		// 按条件查询所有药品
//		Page<Medicin> medicins = medicinService.findMedicinList(page, rows, medName, medPrice, medProduct);
//		model.addAttribute("page", medicins);
//		
//		
//		//添加参数
//		model.addAttribute("medName", medName);
//		model.addAttribute("medProduct", medProduct);
//		model.addAttribute("medPrice", medPrice);
//		
//		return "medicin";
//
//	}
//
//	/**
//	 * 删除药品
//	 */
//	@RequestMapping("/medicin/delete.action")
//	@ResponseBody
//	public String medicinDelete(Integer id) {
//		int rows = medicinService.deleteMedicin(id);
//		if (rows > 0) {
//			return "OK";
//		} else {
//			return "FAIL";
//		}
//
//	}
//
//}
