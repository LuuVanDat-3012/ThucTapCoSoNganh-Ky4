package com.restfullapi.demo.MyController;

import com.restfullapi.demo.Entity.Cart;
import com.restfullapi.demo.Service.CartJPA;
import com.restfullapi.demo.Service.PhoneJPA;
import com.restfullapi.demo.Service.UserJPA;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
public class CartRestController {
    @Autowired
    CartJPA cartJPA;
    @Autowired
    PhoneJPA phoneJPA;
    @Autowired
    UserJPA userJPA;

    @GetMapping("/cart")
    public ResponseEntity<List<Cart>> getAllCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String username =  (String)session.getAttribute("username");
        String userId = userJPA.findIdByUsername(username);
        List<Cart> list = cartJPA.getCartByUserId(userId);
        return ResponseEntity.ok(list);
    }

    @PostMapping("/cart")
    public Integer createCart(@RequestBody Cart cart, HttpServletRequest request) {
        HttpSession session = request.getSession();
        String userName = (String) session.getAttribute("username");

        if (userName == null) {
            return 0;
        } else {
            String phoneName = (String) session.getAttribute("buyPhoneName");
            cart.setPhone(phoneJPA.findByPhoneName(phoneName));
            cart.setUser(userJPA.findByUserName(userName));
//        cart.setStatus(false);
//        cartJPA.createCart(cart.getAmount(), cart.getStatus(), cart.getPhone().getPhoneID(), cart.getUser().getUserId());
            cartJPA.save(cart);
            return 1;
        }
    }

    @PutMapping("/cart/{id}")
    public ResponseEntity<?> updateCart(Cart order) {
        cartJPA.updateOrder(order.getAmount(), order.getCartId());
        return null;
    }

    @DeleteMapping("/cart/{id}")
    public ResponseEntity<?> deleteCart(int orderId) {
        cartJPA.deleteOrder(orderId);
        return null;
    }

}
