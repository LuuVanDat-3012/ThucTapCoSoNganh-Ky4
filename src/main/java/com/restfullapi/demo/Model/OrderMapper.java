package com.restfullapi.demo.Model;

import com.restfullapi.demo.Entity.Cart;
import org.modelmapper.ModelMapper;

public class OrderMapper {
    public static OrderDto convertOrder(Cart orders){
        ModelMapper mapper = new ModelMapper();
        OrderDto orderDto = mapper.map(orders, OrderDto.class);
        return  orderDto;
    }
}
