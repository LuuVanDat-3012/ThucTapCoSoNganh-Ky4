package com.restfullapi.demo.Entity;


import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.*;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;


@Data
@Entity

public class Brand {
    public Brand() {
    }

    @Id
    @Column
    private String brandId;
    @Column
    private String brandName;
    @JsonIgnore
    @OneToMany(mappedBy = "brand", fetch = FetchType.LAZY)
    private Collection<Phone> phones;

    private String updateBy;
    private Date updatedDate;
    private Boolean status;

}