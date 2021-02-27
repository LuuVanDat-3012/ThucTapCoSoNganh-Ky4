package com.restfullapi.demo.Model;

import com.restfullapi.demo.Entity.Cart;
import org.modelmapper.ModelMapper;

import java.util.ArrayList;
import java.util.List;

public class CartMapper {
    public static CartDTO convertCart(Cart cart){
        ModelMapper mapper = new ModelMapper();
        CartDTO cartDTO = mapper.map(cart, CartDTO.class);
        return cartDTO;
    }
    public static List<CartDTO> convertCartList(List<Cart> cartList){
        List<CartDTO> cartDTOList = new ArrayList<>();
        for (int i = 0; i < cartList.size(); i++) {
            cartDTOList.add(convertCart(cartList.get(i)));
        }
        return cartDTOList;
    }
}
