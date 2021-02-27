package com.restfullapi.demo.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Table(name = "Orders")
public class Order {
    @Id
    @GeneratedValue
    @Column
    private int OrderId;

    @Column
    @Temporal(TemporalType.DATE)
    Date datePurchase;
    @ManyToOne
    @JsonIgnore
    @JoinColumn(name = "userId")
    private User users;
    @Column
    private String status;

    @OneToMany(mappedBy = "order", fetch = FetchType.LAZY)
    @JsonIgnore
    private Collection<OrderDetail> orderDetails;

    @Column
    private Long price;
    @Column
    private Long amount;
    private String updateBy;
    private Date updatedDate;

}
