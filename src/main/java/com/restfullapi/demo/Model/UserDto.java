package com.restfullapi.demo.Model;

import com.restfullapi.demo.Entity.Cart;
import com.restfullapi.demo.Entity.Order;
import com.restfullapi.demo.Entity.Role;
import lombok.Data;

import java.util.Collection;
import java.util.List;

@Data
public class UserDto {


    private String userName;
    private String role;
    private Collection<Cart> cartCollection;
    private Collection<Order> orderCollection;
    private List<Role> roleList;
}
