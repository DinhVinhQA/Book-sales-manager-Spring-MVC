/*
 * @author VTA
 * @date May 16, 2020
 * @version 1.0
 */

package com.khosach.controller.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.khosach.dto.ProductDTO;
import com.khosach.service.ICRUDService;
import com.khosach.service.IGroupProductService;
import com.khosach.service.IProductService;

@Controller
public class ProductController {
	
	@Autowired
	ICRUDService<ProductDTO> productService;
	
	@Autowired
	IGroupProductService groupProductService;
	
	@Autowired
	IProductService productService2;
	
	@RequestMapping(value = "/quan-tri/san-pham", method = RequestMethod.GET)
	public ModelAndView groupProuctPage() {
		ModelAndView mav = new ModelAndView("admin/product/product");
		mav.addObject("listProduct",productService.findAll());
		return mav;
	}
	@RequestMapping(value = "/quan-tri/san-pham/chinh-sua", method = RequestMethod.GET)
	public ModelAndView editGroupProuctPage(@RequestParam(value="id",required = false) Long id, HttpServletRequest request ) {
		ModelAndView mav = new ModelAndView("admin/product/editProduct");
		ProductDTO productDTO = new ProductDTO();
		if(id!=null) {
			productDTO = productService.findById(id);
			mav.addObject("listStatus",productService2.OptionStatus());
		}
		mav.addObject("groupProducts",groupProductService.findAllProductCombobox());
		mav.addObject("model",productDTO);
		return mav;
	}
}
