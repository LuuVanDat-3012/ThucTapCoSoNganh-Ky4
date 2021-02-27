package com.restfullapi.demo.Entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Collection;
import java.util.List;

@Entity
@Data
@Table(name = "Roles")
@Getter
@Setter
public class Role {
    @Id
    @Column(name = "roleId")
    private int roleId;
    @Column(name = "roleName")
    private String roleName;
    @JsonIgnore
    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "User_Role",
            joinColumns = @JoinColumn(name = "roleId"),
            inverseJoinColumns = @JoinColumn(name = "user_Id"))
    private List<User> userCollection;
}
