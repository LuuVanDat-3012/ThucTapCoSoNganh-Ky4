package com.restfullapi.demo.Model;

import com.restfullapi.demo.Entity.Brand;
import com.restfullapi.demo.Entity.Phone;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Id;
@Data
public class LaptopDTO {
    private String ltId;
    private String ltName;
    private String ltImage;
    private Long ltPrice;
    private int ltAmount;
    private int ltRam;
    private String ltCpu;
    private int ltBattery;
    private String ltMonitor;
    private Brand brandlt;
    private String ltDescriptionMonitor;
    private String ltDescriptionHardware;
    private String ltDescriptionKeyboard;

}
