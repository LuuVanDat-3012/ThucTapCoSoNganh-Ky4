package com.restfullapi.demo.Model;

import com.restfullapi.demo.Entity.Brand;
import com.sun.istack.NotNull;
import com.sun.istack.Nullable;
import lombok.Data;

import javax.persistence.Column;

@Data
public class PhoneDto {
    private int phoneID;
    private String phoneName;
    private Long soLuong;
    private Brand brand;
    private int giaTien;
    private String image;
    private String infoPhone;
    private String pDescriptionMonitor;
    private String pDescriptionHardware;
    private String pDescriptionCamera;
    @Column(name = "rate_point")
    private  float ratePoint;
    private String phoneImage1;
    private String phoneImage2;
    private String phoneImage3;
    private String phoneImage4;
}

