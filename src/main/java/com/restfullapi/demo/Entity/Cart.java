package com.restfullapi.demo.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Entity
@Data
@Table(name = "cart")
public class Cart {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cart_Id")
    private int cartId;
//    @Column(name = "datePurchase")
//    @Temporal(TemporalType.DATE)
//    private Date datePurchase;
    public boolean isStatus() {
        return status;
    }
    public void setStatus(boolean status) {
        this.status = status;
    }
    @JsonIgnore
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "userId")
    private User user;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "phoneID")
    private Phone phone;

    @Column
    private int amount;
    @Column
    private boolean status;
    private String updateBy;
    private Date updatedDate;



}
