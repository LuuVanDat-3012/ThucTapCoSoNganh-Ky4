package com.restfullapi.demo.Model;

import com.restfullapi.demo.Entity.Phone;
import lombok.Data;

@Data
public class CartDTO {
    private int cartId;
    private Phone phone;
    private int amount;
}
