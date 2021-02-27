package com.restfullapi.demo.Service;

import com.restfullapi.demo.Entity.Cart;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public interface CartJPA extends JpaRepository<Cart, Integer> {
    @Override
    List<Cart> findAll();
    @Query(value = "select * from Cart where cart_id like '%' + ?1 +'%' and status ='true'", nativeQuery = true)
    List<Cart> findAllByOrderId(int cartId);

    @Query(value = "update cart set amount = ?1 where cart_id like like '%' + ?2 +'%' and status ='true' ", nativeQuery = true)
    void updateOrder(int amount, int cartId);

    @Query(value = "delete from cart where cart_id like '%' + ?1 +'%' and status ='true'", nativeQuery = true)
    void deleteOrder(int cartId);

    @Query(value = "insert into Cart(amount, status, phoneid, user_id) values " +
            "(?1,?2,?3,?4)", nativeQuery = true)
    void createCart(int amount, boolean status, int phoneid, String userid);
    @Query(value = "select * from cart where user_id = ?1 and status ='true'", nativeQuery = true)
    List<Cart> getCartByUserId(String userId);
}
