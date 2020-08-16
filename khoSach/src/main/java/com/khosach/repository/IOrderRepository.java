/*
 * @author VTA
 * @date May 17, 2020
 * @version 1.0
 */

package com.khosach.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.khosach.entity.OrderEntity;

public interface IOrderRepository extends JpaRepository<OrderEntity, Long> {
	OrderEntity findTop1ByOrderByOrderIDDesc();
	List<OrderEntity> findAllByStatus(int status);
	List<OrderEntity> findAllByUsers_IdAndStatus(long userID,int status );
	List<OrderEntity> findAllByUsers_Id(long userID);
}
