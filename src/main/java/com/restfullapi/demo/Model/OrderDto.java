package com.restfullapi.demo.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.restfullapi.demo.Entity.Phone;
import com.restfullapi.demo.Entity.User;
import lombok.Data;

import javax.persistence.*;
import java.util.Date;
@Data
public class OrderDto {
    private Date datePurchase;
    private User user;
    private Phone phone;
    private String deliveryAddress;
    private boolean status;
}
