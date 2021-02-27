package com.restfullapi.demo.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Date;

@Entity
public class OrderDetail {
    @Id
    @Column
    @GeneratedValue
    private int orderDetailId;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "phoneID")
    Phone phone;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "orderId")
    Order order;
    private String updateBy;
    private Date updatedDate;
    private Boolean status;
}
