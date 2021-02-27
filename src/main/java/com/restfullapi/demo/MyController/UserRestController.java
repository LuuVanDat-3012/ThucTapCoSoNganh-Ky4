package com.restfullapi.demo.MyController;

import com.restfullapi.demo.Entity.User;
import com.restfullapi.demo.Model.UserDto;
import com.restfullapi.demo.Model.UserMapper;
import com.restfullapi.demo.Service.UserJPA;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@RestController
public class UserRestController {
    @Autowired
    UserJPA userJPA;
    @Autowired
    AuthenticationManager authenticate;


    @GetMapping("/user")
    public ResponseEntity<List<UserDto>> getAllUser(HttpSession session){
        return ResponseEntity.ok(UserMapper.convertListUser(userJPA.findAll()));
    }
    @GetMapping("/user/{id}")
    public ResponseEntity<List<UserDto>> getUserById(@PathVariable("id") String id){
        return ResponseEntity.ok(UserMapper.convertListUser(userJPA.findAllByUserId(id)));
    }
    @PostMapping("/user")
    public ResponseEntity<Boolean> createUser(@RequestBody User user, HttpServletRequest request){
        String tmp = userJPA.getLastIdUser().replaceAll("KH","");
        int userId = Integer.parseInt(tmp);
        User user1 = userJPA.findByUserName(user.getUserName());
        if(user1 != null){
            return ResponseEntity.ok(false);
        }
        else {
            userId++;
            user.setUpdateBy(user.getUserId());
            user.setUpdatedDate(new Date());
            user.setStatus(true);
            user.setUserId("KH"+userId);
            String pass = user.getPassword();
            user.setPassword(BCrypt.hashpw(pass, BCrypt.gensalt(10)));
            userJPA.save(user);
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body(true);
        }

//        return ResponseEntity.ok(user);
    }
    @PutMapping("/user/{id}")
    public ResponseEntity<?> updateUser(@PathVariable("id") String id) {
        return null;
    }

    @DeleteMapping("/user/{id}")
    public ResponseEntity<Boolean> deletePhone(@PathVariable("id") String id) {
        try {
            userJPA.deleteById(id);
            return ResponseEntity.ok(true);
        }catch (Exception e){
            return ResponseEntity.status(404).body(false);
        }
    }


}
