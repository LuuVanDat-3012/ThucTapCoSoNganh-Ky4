package com.restfullapi.demo.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.sun.istack.NotNull;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Entity
@Data
@Table(name = "users")
@NoArgsConstructor
@AllArgsConstructor
public class User {
    @Id
    @Column(name = "userId")
    @NotNull
    private String userId;
    @Column(name = "userName", nullable = false, unique = true)
    private String userName;
    @Column
    private String password;
    @JsonIgnore
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private Collection<Cart> cartCollection;

    @JsonIgnore
    @OneToMany(mappedBy = "users", fetch = FetchType.LAZY)
    private Collection<Order> orderCollection;


    @JsonIgnore
    @ManyToMany(mappedBy = "userCollection", fetch = FetchType.LAZY)
    private List<Role> roleList;

    private String updateBy;
    private Date updatedDate;
    private Boolean status;

    @JsonIgnore
    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    private Collection<Feedback> feedbacks;

}
