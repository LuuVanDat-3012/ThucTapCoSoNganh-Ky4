package com.restfullapi.demo.Service;

import com.restfullapi.demo.Entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserJPA  extends JpaRepository<User, String> {
//    @Query("SELECT u FROM User u WHERE u.userName = :username")
//    public User findByUserName(@Param("username") String username);
       User findByUserName(String userName);
    public List<User> findAllByUserId(String id);
    @Query(value = "select top 1 user_id from users order by user_id desc ", nativeQuery = true)
    public String getLastIdUser();
    @Query(value = "select user_id from users where user_name = ?1", nativeQuery = true)
    public String findIdByUsername(String username);
    @Query(value = "select role from users where user_name = ?1", nativeQuery = true)
    public String findRoleByUsername(String username);



}
