/*
 * @author VTA
 * @date May 25, 2020
 * @version 1.0
 */

package com.khosach.api.web;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.khosach.dto.OrderCartDTO;
import com.khosach.dto.OrderDTO;
import com.khosach.service.IOrderDetailService;
import com.khosach.service.IOrderService;
import com.khosach.service.IUserService;

@RestController(value = "orderAPIOfWeb")
public class OrderAPI {
	@Autowired
	IUserService userService;
	
	@Autowired
	IOrderService orderService;
	
	@Autowired
	IOrderDetailService oderDetailService;
	
	@PostMapping("api/order")
	public ResponseEntity<?> addOrder(@RequestBody OrderCartDTO orderCartDTO) {
		userService.updateUser_Oder(orderCartDTO);
		orderService.save_order(orderCartDTO);
		return ResponseEntity.noContent().build();
	}
	@GetMapping("api/order/{status}")
	public ResponseEntity<?> hrOder(@PathVariable(value = "status", required = false) int status) {
		List<OrderDTO> listOrderDetail = new ArrayList<OrderDTO>();
		if(status==0) {
			listOrderDetail = orderService.findAllByUserID();
		}else {
			listOrderDetail = orderService.findAllByUserIDAndStatus(status);
		}
		return ResponseEntity.ok(listOrderDetail);
	}
	@DeleteMapping("api/order/{orderID}")
	public ResponseEntity<?> deleteOrder(@PathVariable(value = "orderID", required = false) int orderID) {
		orderService.updateOrder(orderID, 5);
		return ResponseEntity.noContent().build();
	}
}
