package com.restfullapi.demo.Model;

import com.restfullapi.demo.Entity.User;
import com.restfullapi.demo.Service.UserJPA;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;

public class CheckUser {
    @Autowired
    UserJPA userJPA;

    public String check(String userName, String psw, User user) {
        if (user == null)
            return null;
        else {
            if (BCrypt.checkpw(psw, user.getPassword())) {
                return user.getUserId();
            } else
                return null;
        }
    }
}
