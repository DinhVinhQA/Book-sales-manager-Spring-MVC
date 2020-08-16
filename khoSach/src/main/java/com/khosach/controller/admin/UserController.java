/*
 * @author VTA
 * @date May 17, 2020
 * @version 1.0
 */

package com.khosach.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.khosach.service.IUserService;

@Controller
public class UserController {
	@Autowired
	IUserService userService;

	@RequestMapping(value = "/quan-tri/khach-hang", method = RequestMethod.GET)
	public ModelAndView userPage() {
		ModelAndView mav = new ModelAndView("admin/user/user");
		mav.addObject("listUser", userService.findAllUser());
		return mav;
	}
	@RequestMapping(value = "/quan-tri/danh-sach-admin", method = RequestMethod.GET)
	public ModelAndView adminPage() {
		ModelAndView mav = new ModelAndView("admin/user/admin");
		mav.addObject("listUser", userService.findAllAdmin());
		return mav;
	}
}
