package com.restfullapi.demo.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;

@Entity
@Data
public class Phone {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column
    private int phoneID;

    @Column
    private String phoneName;
    @Column

    private Long soLuong;
    @Column(name = "gia_tien")
    private Long giaTien;

    @Column
    private String image;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "brandId")
    private Brand brand;


    @Column
    private String infoPhone;
    @JsonIgnore
    @OneToMany(mappedBy = "phone", fetch = FetchType.LAZY)
    private Collection<Cart> cartCollection;

    @JsonIgnore
    @OneToMany(mappedBy = "phone", fetch = FetchType.LAZY)
    private Collection<OrderDetail> orderDetails;
    @Column(name = "wholesale_price")
    private Long wholesalePrice;
    private String updateBy;
    private Date updatedDate;
    private Boolean status;

    private String pDescriptionMonitor;
    private String pDescriptionHardware;
    private String pDescriptionCamera;
    private Long pBattery;

    @JsonIgnore
    @OneToMany(mappedBy = "phone", fetch = FetchType.LAZY)
    private Collection<Feedback> feedbacks;
    private  Float ratePoint;

    private String phoneImage1;
    private String phoneImage2;
    private String phoneImage3;
    private String phoneImage4;


}
