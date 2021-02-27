package com.restfullapi.demo.Service;

import com.restfullapi.demo.Entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRoleJPA extends JpaRepository<Role, Integer> {

}
